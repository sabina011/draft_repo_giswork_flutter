import 'dart:developer' as Developer;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'media_constants.dart';

class FileDataProvider extends ChangeNotifier {
  List<XFile>? imageList = [];
  bool check_image = false;
  bool select_ByCamera = false;

  /// pick multiple images from gallery
  void pickImageFromSourceSelect() async {
    try {
      final List<XFile>? images =
          await ImagePicker().pickMultiImage(imageQuality: 50);
      if (images == null)
        return;
      else {
        for (var x in images) {
          imageList!.add(x);
        }
        check_image = true;
        notifyListeners();
      }
    } on PlatformException catch (e) {
      Developer.log(MediaGisMessage.PlatFormErrorMessage + e.toString());
    } catch (e) {
      Developer.log(MediaGisMessage.ErrorMessage + e.toString());
    }
  }

  ///click image by camera
  void pickImageByCamera() async {
    try {
      final cameraImage =
          await ImagePicker().pickImage(source: ImageSource.camera);
      if (cameraImage == null)
        return;
      else {
        imageList!.add(cameraImage);
        select_ByCamera = true;
        check_image = true;
        notifyListeners();
      }
    } on PlatformException catch (e) {
      Developer.log(MediaGisMessage.PlatFormErrorMessage + e.toString());
    } catch (e) {
      Developer.log(MediaGisMessage.ErrorMessage + e.toString());
    }
  }
}
