import 'package:flutter/material.dart';

class GenericInputBox extends StatelessWidget {
  final TextEditingController inputController;
  final String hintText;

  const GenericInputBox({
    required this.inputController,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      child: TextFormField(
        // initialValue: initialValue,
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                12.0,
              ),
            ),
          ),
        ),
        controller: inputController,
        cursorColor: Colors.blue,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        validator: (val) {
          if (val!.isEmpty) {
            return 'Input cannot be empty';
          }
          if (!val.contains(RegExp(r'^[a-zA-Z0-9.! ]+$'))) {
            return 'Input should be string';
          }
          return null;
        },
      ),
    );
  }
}
