import 'package:flutter/material.dart';

Widget GISButtonSaveOrUpload({
  required BuildContext context,
  required String btn_text,
}) {
  return Center(
    child: Container(
      height: 50,
      width: MediaQuery.of(context).size.width * 0.75,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(
          12.0,
        ),
      ),
      child: Center(
        child: Text(
          btn_text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}

Widget GISButtonAddInformationAlert({
  required BuildContext context,
  required String btn_text,
  required VoidCallback onPressed,
}) {
  return Center(
    child: Container(
      height: 40,
      width: MediaQuery.of(context).size.width * 0.8,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(
          50.0,
        ),
      ),
      child: Center(
        child: Text(
          btn_text,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
      ),
    ),
  );
}
