import 'package:flutter/material.dart';

Widget GISDynamicFormField({
  required TextEditingController controller,
  String? initialValue,
}) {
  return Container(
    padding: EdgeInsets.only(top: 8.0),
    child: TextFormField(
      // initialValue: initialValue,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              12.0,
            ),
          ),
        ),
      ),
      controller: controller,
      cursorColor: Colors.blue,
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.normal,
      ),
      onChanged: (val) {
        controller.text = val;
      },
      validator: (val) {
        if (val!.isEmpty) {
          return 'Input cannot be empty';
        }
        if (!val.contains(RegExp(r'^[a-zA-Z0-9.! ]+$'))) {
          return 'Input should be string';
        }
        return null;
      },
    ),
  );
}

class GisFormField extends StatelessWidget {
  final TextEditingController controller;
  final String initialValue;

  const GisFormField({required this.controller, required this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 8.0),
      child: TextFormField(
        // initialValue: initialValue,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                12.0,
              ),
            ),
          ),
        ),
        controller: controller,
        cursorColor: Colors.blue,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        validator: (val) {
          if (val!.isEmpty) {
            return 'Input cannot be empty';
          }
          if (!val.contains(RegExp(r'^[a-zA-Z0-9.! ]+$'))) {
            return 'Input should be string';
          }
          return null;
        },
      ),
    );
  }
}

class LocationSearchFormField extends StatelessWidget {
  final TextEditingController searchPlaceTextController;
  final String hintText;

  const LocationSearchFormField(
      {required this.searchPlaceTextController, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: MediaQuery.of(context).size.width * 0.7,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: IconButton(
            icon: Icon(
              Icons.search,
              size: 20,
            ),
            onPressed: () {},
          ),
          suffixIcon: IconButton(
            icon: Icon(
              Icons.close,
              size: 20,
            ),
            onPressed: () {
              searchPlaceTextController.clear();
            },
          ),
          filled: true,
          fillColor: Colors.white30,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(
                12.0,
              ),
            ),
          ),
        ),
        controller: searchPlaceTextController,
        cursorColor: Colors.blue,
        style: TextStyle(
          color: Colors.black,
          fontSize: 14,
          fontWeight: FontWeight.normal,
        ),
        validator: (val) {
          if (val!.isEmpty) {
            return 'Place search cannot be empty';
          }
          if (!val.contains(RegExp(r'^[a-zA-Z0-9.! ]+$'))) {
            return 'Input should be string';
          }
          return null;
        },
      ),
    );
  }
}
