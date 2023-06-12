import 'package:flutter/material.dart';

Widget imageProp(String imageURL, double imgHeight, double imgWidth) {
  return Image.asset(
    imageURL,
    height: imgHeight,
    width: imgWidth,
  );
}

Widget pickerSource(IconData icons) {
  return Container(
    color: Colors.grey[200],
    height: 100,
    width: 100,
    child: Icon(
      icons,
    ),
  );
}

Widget GISDynamicText({required String text, required bool isHeadings}) {
  return Text(
    '$text',
    style: isHeadings
        ? TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold,)
        : TextStyle(
            color: Colors.black, fontSize: 13, fontWeight: FontWeight.normal),
  );
}

Widget GISContainerDecoration(Icon icon) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[200],
      border: Border.all(color: Colors.black54),
      borderRadius: BorderRadius.all(Radius.circular(8.0)),
    ),
    height: 100,
    width: 100,
    child: icon,
  );
}

Widget textGeneric(
  String text,
  FontWeight fontWeight,
  double fontSize, {
  Color? textColor,
}) {
  return Text(
    text,
    style: TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: textColor ?? Colors.black,
    ),
  );
}
