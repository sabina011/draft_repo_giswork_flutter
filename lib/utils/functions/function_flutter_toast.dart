import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void GISFlutterToast(
  BuildContext context,
  String msgToast,
) {
  Fluttertoast.showToast(
    msg: msgToast,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.CENTER,
    fontSize: 16.0,
    backgroundColor: Theme.of(context).primaryColor,
    textColor: Colors.white,
  );
}
