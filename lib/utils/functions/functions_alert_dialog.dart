import 'package:flutter/material.dart';
import 'package:myapp/screens/location_selector/widgets/add_location_informations.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';
import 'package:myapp/widgets/widget.dart';

void GISAlertDialog(
  BuildContext context,
  String dialogMainTitle,
  String dialogBodyText,
  String btnText,
) {
  showDialog(
    context: context,
    barrierDismissible: false, //user must tab
    builder: (BuildContext context) {
      return new SimpleDialog(
        contentPadding: EdgeInsets.all(
          32.0,
        ),
        title: GISDynamicText(
          text: dialogMainTitle,
          isHeadings: true,
        ),
        children: [
          GISDynamicText(
            text: dialogBodyText,
            isHeadings: false,
          ),
          SizedBox(
            height: 32.0,
          ),
          ElevatedButton(
            child: Text(
              btnText,
              style: TextStyle(
                color: Colors.white,
                fontSize: 13.0,
                fontWeight: FontWeight.normal,
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}

void GISAlertDialogRoute(
  BuildContext context,
  String dialogMainTitle,
  String addInformationText,
  String dialogBodyText,
  String btnText,
  VoidCallback onPressed,
) {
  showDialog(
    context: context,
    barrierDismissible: true, //user must tab
    builder: (BuildContext context) {
      return new SimpleDialog(
        contentPadding: EdgeInsets.all(
          16.0,
        ),
        title: Center(
          child: GISDynamicText(
            text: dialogMainTitle,
            isHeadings: true,
          ),
        ),
        children: [
          Center(
            child: GISDynamicText(
              text: addInformationText,
              isHeadings: false,
            ),
          ),
          SizedBox(
            height: 16.0,
          ),
          TextButton(
            onPressed: () {
              print('button pressed');
              popScreen(context);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => AddLocationInformation(),
                ),
              );
            },
            child: Text('Add Information'),
          ),
          SizedBox(
            height: 16.0,
          ),
          GISDynamicText(
            text: dialogBodyText,
            isHeadings: false,
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                child: Text(
                  btnText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                onPressed: onPressed,
              ),
              ElevatedButton(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  popScreen(context);
                },
              ),
            ],
          )
        ],
      );
    },
  );
}

void GISAlertDeleteConfirmDialog(
  BuildContext context,
  String dialogMainTitle,
  String dialogBodyText,
  String btnText,
  VoidCallback onPressed,
) {
  showDialog(
    context: context,
    barrierDismissible: false, //user must tab
    builder: (BuildContext context) {
      return new SimpleDialog(
        contentPadding: EdgeInsets.all(
          16.0,
        ),
        title: Center(
          child: GISDynamicText(
            text: dialogMainTitle,
            isHeadings: true,
          ),
        ),
        children: [
          GISDynamicText(
            text: dialogBodyText,
            isHeadings: false,
          ),
          SizedBox(
            height: 32.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                child: Text(
                  "Cancel",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              SizedBox(
                width: 20,
              ),
              ElevatedButton(
                child: Text(
                  btnText,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 13.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                onPressed: onPressed,
              ),
            ],
          )
        ],
      );
    },
  );
}
