import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:myapp/screens/customize/customize_constants.dart';
import 'package:myapp/utils/functions/function_reuse.dart';
import 'package:provider/provider.dart';

import '../../../utils/services/native/media/media_file_selector.dart';

Widget selectOptionByCamera(BuildContext context) {
  return GestureDetector(
      onTap: () {
        context.read<FileDataProvider>().pickImageByCamera();
      },
      child: Container(
        height: CustomizeGisConstant.imageHeight,
        width: CustomizeGisConstant.imageWidth * 0.75,
        child: Icon(
          Icons.add_a_photo_outlined,
          size: 45,
          color: getIconColorFromApplicationContext(context),
        ),
      ));
}

Widget imageContainer(File imageUrl) {
  return Container(
    height: CustomizeGisConstant.imageHeight,
    width: CustomizeGisConstant.imageWidth,
    margin: EdgeInsets.only(top: 8.0, right: 8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    child: Image.file(
      imageUrl,
      fit: BoxFit.cover,
    ),
  );
}

List<Widget> videoList(
    BuildContext context, List<File> data, bool isImageByCamera) {
  List<Widget> widgets = data.map((e) => imageContainer(File(e.path))).toList();
  if (isImageByCamera) widgets.insert(0, selectOptionByCamera(context));
  return widgets;
}

List<Widget> imagesList(
    BuildContext context, List<XFile>? data, bool isImageByCamera) {
  List<Widget> widgets =
      data!.map((e) => imageContainer(File(e.path))).toList();
  if (isImageByCamera) widgets.insert(0, selectOptionByCamera(context));
  return widgets;
}

Widget imageContainerTraveller(File imageUrl) {
  return Container(
    height: CustomizeGisConstant.imageHeight * 0.75,
    width: CustomizeGisConstant.imageWidth * 0.75,
    margin: EdgeInsets.only(top: 8.0, right: 8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
    child: Image.file(
      imageUrl,
      fit: BoxFit.cover,
    ),
  );
}

List<Widget> imagesListLayTraveller(
    BuildContext context, List<XFile>? data, bool isImageByCamera) {
  List<Widget> widgets =
      data!.map((e) => imageContainerTraveller(File(e.path))).toList();
  return widgets;
}
