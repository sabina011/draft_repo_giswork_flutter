import 'package:flutter/material.dart';
import 'package:myapp/screens/login/login_screen.dart';

import '../../../application/login/login_validators.dart';

class GenericFormField extends StatefulWidget {
  final TextEditingController userInputController;
  final String hintText;
  final FormInputType inputType;

  GenericFormField({
    required this.hintText,
    required this.inputType,
    required this.userInputController,
  });

  @override
  State<GenericFormField> createState() => _GenericFormFieldState();
}

class _GenericFormFieldState extends State<GenericFormField> {
  bool isPassword = false;
  bool isPasswordShowing = false;

  @override
  void initState() {
    if (widget.inputType == FormInputType.Password)
      setState(() => isPassword = true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.userInputController,
      obscureText: isPassword,
      decoration: inputDecorationByType(),
      validator: (value) {
        if (widget.inputType == FormInputType.UserName)
          return emailValidator(value);
        if (widget.inputType == FormInputType.Password)
          return passwordValidator(value);
      },
      onSaved: (value) {
        widget.userInputController.text = value!;
      },
    );
  }

  InputDecoration inputDecorationByType() {
    return widget.inputType == FormInputType.Password
        ? InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            labelText: widget.hintText,
            suffixIcon: isPasswordShowing
                ? InkWell(
                    onTap: showPassword,
                    child: Icon(Icons.visibility_off),
                  )
                : InkWell(
                    onTap: showPassword,
                    child: Icon(Icons.visibility),
                  ),
          )
        : InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12.0),
              ),
            ),
            labelText: widget.hintText,
          );
  }

  void showPassword() {
    if (isPasswordShowing == true) {
      setState(() {
        isPassword = false;
        isPasswordShowing = false;
      });
    } else if (isPasswordShowing == false) {
      setState(() {
        isPassword = true;
        isPasswordShowing = true;
      });
    }
  }
}
