import 'package:flutter/material.dart';
import 'package:myapp/screens/lay_traveller/wigets/text_styles.dart';

import '../../widgets/widget.dart';

void GISTextEditingDialogBox(
  BuildContext context,
  TextEditingController packageNameTextEditingController,
  String dialogMainTitle,
  String inputLabelText,
  String btnText,
  Size size,
  VoidCallback onPressed,
) {
  showDialog(
    context: context,
    barrierDismissible: false, //user must tab
    builder: (BuildContext context) {
      return Center(
        child: Container(
          child: new SimpleDialog(
            contentPadding: EdgeInsets.all(
              16.0,
            ),
            title: Center(
              child: Text(
                dialogMainTitle,
                style: mainPlaceTextStyle(),
              ),
            ),
            children: [
              GISDynamicText(
                text: inputLabelText,
                isHeadings: true,
              ),
              SizedBox(
                height: 8.0,
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45),
                  borderRadius: BorderRadius.all(Radius.circular(12.5)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: TextFormField(
                    controller: packageNameTextEditingController,
                    decoration: InputDecoration(
                      hintText: packageNameTextEditingController.text,
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
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
          ),
        ),
      );
    },
  );
}
