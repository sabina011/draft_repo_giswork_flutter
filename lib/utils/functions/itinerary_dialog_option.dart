import 'package:flutter/material.dart';
import 'package:myapp/utils/functions/special/gis_alert_bloc.dart';

import '../../config/routes/routes_handler.dart';
import 'functions_alert_dialog.dart';

void popUpItineraryCloseDialogOption(
    BuildContext context, String dialogOptionToExit) {
  GISAlertDeleteConfirmDialog(
    context,
    "Close ${dialogOptionToExit}",
    "Are you sure want to close ${dialogOptionToExit} operation ?",
    "Confirm",
    () {
      jumpToUserCategoryScreen(context);
    },
  );
}

void popUpItineraryActionOrOperationDialogOption(
    BuildContext context, String dialogActionText, VoidCallback onPressed) {
  GISAlertDeleteConfirmDialog(
    context,
    "${dialogActionText[0].toUpperCase() + dialogActionText.substring(1, dialogActionText.length)} itinerary Package",
    "Are you sure want to ${dialogActionText} itinerary package?",
    "Confirm",
    onPressed,
  );
}

void popUpItineraryBlocUploadOperationDialogOption(
  BuildContext context,
  String dialogActionText,
  VoidCallback onPressed,
) {
  GISAlertBlocDeleteConfirmDialog(
    context,
    "${dialogActionText[0].toUpperCase() + dialogActionText.substring(1, dialogActionText.length)} itinerary Package",
    "Are you sure want to ${dialogActionText} itinerary package?",
    "Confirm",
    onPressed,
  );
}
