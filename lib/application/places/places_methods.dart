import 'package:flutter/material.dart';

class PlaceViewComponents {
//show dialog
  showPlacesContent(BuildContext context, String placeName, String imgUrlPath,
      String placeShortNotes) {
    showDialog(
      context: context,
      barrierDismissible: false, //user must tab
      builder: (BuildContext context) {
        return new SimpleDialog(
          contentPadding: EdgeInsets.all(16.0),
          title: new Text(placeName),
          children: [
            Image.asset(
              imgUrlPath,
              width: 600,
              height: 300,
            ),
            Text(
              placeShortNotes,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
            ),
            ElevatedButton(
              child: Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  seasonalInfromation(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false, // user must tab
      builder: (BuildContext context) {
        return new SimpleDialog(
          titlePadding: EdgeInsets.fromLTRB(24, 0, 24, 0),
          title: new Text('Seasonal Information'),
          children: [
            Text(
              ' The winter season is not favorable for traveller. According to the local hotel owners the two seasonal time is '
              'good for visit. ',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            Text(
              '  1. November - The time when the lake is blue',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '  2. March - The time when the lake is white i.e. covered by snow',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              '  In each year between November and March, all hotels at Upper Khangsar and Tilicho Base Camp will be closed due to heavy snowfall.'
              '  \n Therefore, we have to prepare for extra tent and food, so this time is not appropriate to trek.',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ),
            ),
            ElevatedButton(
              child: new Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
