import 'package:flutter/material.dart';

void popScreen(BuildContext context) {
  Navigator.of(context).pop();
}

void jumpToNextScreen(
  BuildContext context,
  Widget routeScreen,
) {
  Navigator.pushReplacement(
    context,
    MaterialPageRoute(
      builder: (context) => routeScreen,
    ),
  );
}
