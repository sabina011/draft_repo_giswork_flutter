import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/config/routes/routes_handler.dart';

import '../../application/upload_package/bloc/upload_package_bloc.dart';
import '../../utils/functions/function_flutter_toast.dart';

class LayTravellerUploadViewHolder extends StatefulWidget {
  final bool isCompletePackage;
  final UploadPackageBloc uploadPackageBloc;
  final List<Map<String, dynamic>> userDataInputAsMap;

  const LayTravellerUploadViewHolder({Key? key,
    required this.isCompletePackage,
    required this.uploadPackageBloc,
    required this.userDataInputAsMap})
      : super(key: key);

  @override
  State<LayTravellerUploadViewHolder> createState() =>
      _LayTravellerUploadViewHolderState();
}

class _LayTravellerUploadViewHolderState
    extends State<LayTravellerUploadViewHolder> {
  @override
  void initState() {
    widget.uploadPackageBloc.add(UploadPackageEvent.upload(
      isCompletePackage: widget.isCompletePackage,
      userSingleDayList: widget.userDataInputAsMap,
    ));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: BlocProvider<UploadPackageBloc>(
          create: (context) => widget.uploadPackageBloc,
          child: BlocListener<UploadPackageBloc, UploadPackageState>(
              listener: (context, state) {
                state.when(
                  initial: () {},
                  loading: () {},
                  error: (message) => GISFlutterToast(context, message),
                  success: (loginResponse) {
                    jumpToNextMapTravellingScreen(context);
                    GISFlutterToast(context, 'Package Upload Successful!');
                  },
                );
              }, child: BlocBuilder<UploadPackageBloc, UploadPackageState>(
            builder: (context, state) {
              return state.maybeWhen(
                error: (err) =>
                    Center(
                      child: Text(
                        err.toString(),
                      ),
                    ),
                loading: () =>
                    Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CircularProgressIndicator(),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text('Data Uploading. Please wait!'),
                        ],
                      ),
                    ),
                orElse: () => SizedBox(),
                success: (response) =>
                    Center(
                      child: Text(
                        response.message,
                      ),
                    ),
              );
            },
          )),
        ),
      ),
    );
  }
}
