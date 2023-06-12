import 'package:flutter/material.dart';

class CustomSnackBar {
  static void show({
    required BuildContext context,
    bool isError = false,
    required String message,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        padding: EdgeInsets.all(16.0),
        content: Container(
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    isError ? Icons.error : Icons.check_circle,
                    color: Colors.white,
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    isError ? 'Error' : 'Success',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                    ),
                  ),

                ],
              ),
              Expanded(
                child: Text(
                  message,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        backgroundColor: isError ? Colors.red : Colors.green,
      ),
    );
  }
}
