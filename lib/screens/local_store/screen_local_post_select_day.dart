import 'package:flutter/material.dart';
import 'package:myapp/config/routes/routes_handler.dart';
import 'package:myapp/constant/app_const.dart';

class LocalStoreSelection extends StatefulWidget {
  const LocalStoreSelection({Key? key}) : super(key: key);

  @override
  State<LocalStoreSelection> createState() => _LocalStoreSelectionState();
}

class _LocalStoreSelectionState extends State<LocalStoreSelection> {
  List<int> dropDownList = [];
  int selectedDayItem = 1;

  @override
  void initState() {
    dropDownValueGeneration();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Flex(
              mainAxisAlignment: MainAxisAlignment.center,
              direction: Axis.horizontal,
              children: [
                Text('Choose days'),
                SizedBox(
                  width: 8.0,
                ),
                DropdownButton<int>(
                  value: selectedDayItem,
                  items: dropDownList.map((int value) {
                    return DropdownMenuItem<int>(
                      value: value,
                      child: Text(value.toString()),
                    );
                  }).toList(),
                  onChanged: (value) {
                    setState(() => selectedDayItem = value!);
                    jumpToLocalPostPackageViewHolder(context, value!);
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void dropDownValueGeneration() {
    for(int i= 0 ; i < user_day_max_day; i++){
        dropDownList.add(i+1);
    }
  }
}
