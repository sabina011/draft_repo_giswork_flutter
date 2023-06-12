import 'package:flutter/material.dart';
import 'package:myapp/widgets/widget.dart';

void GISCircularProgressDialog(
  BuildContext context,
  String titleStringText,
) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext mContext) {
      return new SimpleDialog(
        contentPadding: EdgeInsets.all(32.0),
        title: Center(
          child: GISDynamicText(
            text: titleStringText,
            isHeadings: true,
          ),
        ),
        children: [
          Center(
            child: new CircularProgressIndicator(),
          ),
          SizedBox(
            height: 8.0,
          ),
          GISDynamicText(
            text: '$titleStringText, please wait a moment.',
            isHeadings: false,
          ),
        ],
      );
    },
  );
}
