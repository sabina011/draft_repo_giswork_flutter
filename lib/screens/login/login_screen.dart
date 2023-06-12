import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/application/login/bloc/login_bloc.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/screens/login/widgets/generic_form_field.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';
import 'package:myapp/widgets/widget_gis_button.dart';

import '../../application/custom_package/bloc/custom_bloc.dart';
import '../../application/injectable/injection.dart';
import '../../application/upload_package/bloc/upload_package_bloc.dart';

class LoginFormScreen extends StatefulWidget {
  final bool isCompletedPackage;
  final bool isPackageUpload;
  final Map<String, dynamic> mapInputs;
  final List<Map<String, dynamic>> mapUploadPackage;

  const LoginFormScreen({
    Key? key,
    required this.isCompletedPackage,
    required this.isPackageUpload,
    required this.mapInputs,
    required this.mapUploadPackage,
  });

  @override
  State<LoginFormScreen> createState() => _LoginFormScreenState();
}

enum FormInputType { UserName, Password }

class _LoginFormScreenState extends State<LoginFormScreen> {
  static final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _userNameController =
      TextEditingController(text: "baral");
  TextEditingController _userPassController = TextEditingController(text: "1");

  @override
  Widget build(BuildContext context) {
    final bloc = getIt<LoginBloc>();
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<LoginBloc>(
          create: (context) => bloc,
          child: BlocListener<LoginBloc, LoginState>(
            listener: (context, state) {
              state.when(
                initial: () {},
                loading: () {},
                error: (message) => GISFlutterToast(context, message),
                success: (loginResponse) {
                  GISFlutterToast(context, 'Login Successful');
                  final customPostBloc = getIt<CustomPostBloc>();
                  final uploadPackageBloc = getIt<UploadPackageBloc>();
                  widget.isPackageUpload
                      ? jumpToPackageUploadHolder(context, uploadPackageBloc,
                          widget.mapUploadPackage, widget.isCompletedPackage)
                      : jumpToCustomizeUploadHolder(
                          context, customPostBloc, widget.mapInputs);
                },
              );
            },
            child: Form(
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Login',
                      style: Theme.of(context).textTheme.headline4?.copyWith(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).primaryColor,
                          ),
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    GenericFormField(
                      hintText: 'User name',
                      inputType: FormInputType.UserName,
                      userInputController: _userNameController,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GenericFormField(
                      hintText: 'Password',
                      inputType: FormInputType.Password,
                      userInputController: _userPassController,
                    ),
                    const SizedBox(
                      height: 48,
                    ),
                    BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                            loading: () => loginProgress(context),
                            orElse: () => loginFormButton(context, bloc));
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget loginProgress(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget loginFormButton(BuildContext context, LoginBloc loginBloc) {
    return GestureDetector(
      onTap: () => onLoginPressed(context, loginBloc),
      child: GISButtonSaveOrUpload(
        context: context,
        btn_text: "Login",
      ),
    );
  }

  void onLoginPressed(BuildContext context, LoginBloc loginBloc) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();

      loginBloc.add(
        LoginEvent.login(
          username: _userNameController.text.trim(),
          password: _userPassController.text.trim(),
        ),
      );
    }
  }
}
