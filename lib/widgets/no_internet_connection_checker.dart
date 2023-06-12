import 'package:flutter/material.dart';

Widget NoInternetConnectionComponent(Size size) {
  return Center(
    child: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        height: size.height * 0.10,
        width: size.width,
        color: Colors.red,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.signal_wifi_statusbar_connected_no_internet_4_rounded,
                size: 36,
                color: Colors.white,
              ),
              Text(
                'No Internet Connection !',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
