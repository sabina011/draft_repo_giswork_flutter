import 'package:flutter/material.dart';
import 'package:myapp/config/routes/routes_handler.dart';

PreferredSizeWidget appBarWidget(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.lightGreen.shade800,
    title: Text('WebMap'),
    actions: [
      IconButton(
        onPressed: () => jumpToLocalStoreSelectionScreen(context),
        icon: Icon(
          Icons.arrow_forward,
        ),
      ),
    ],
  );
}
