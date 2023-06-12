import 'package:flutter/material.dart';

Widget buildLoading(BuildContext context) {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        SizedBox(
          height: 10,
        ),
        Text("Loading...Please wait")
      ],
    ),
  );
}

Widget buildError(BuildContext context, String errorMessage) {
  return Center(
    child: Text(errorMessage),
  );
}
