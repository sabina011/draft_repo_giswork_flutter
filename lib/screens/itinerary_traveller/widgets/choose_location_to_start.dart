import 'package:flutter/material.dart';

class ChooseLocationToStart extends StatelessWidget {
  final String selectedChar;
  final List<String> dropDownItemsForChoosingMainPlace;
  final ValueChanged<String?>? onChanged;

  const ChooseLocationToStart({
    Key? key,
    required this.selectedChar,
    required this.dropDownItemsForChoosingMainPlace,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedChar,
      items: dropDownItemsForChoosingMainPlace.map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: onChanged,
    );
  }
}
