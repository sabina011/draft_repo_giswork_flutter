import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:myapp/application/upload_package/upload_package_data_conversion.dart';

import '../../../model/hive_model/local_store_model.dart';
import '../../../utils/functions/check_for_distance_units.dart';
import '../../../widgets/widget.dart';
import '../../itinerary_traveller/widgets/widget.dart';
import 'image_view_scrollable.dart';
import 'text_styles.dart';

class CustomExpansionTile extends StatelessWidget {
  final int day;
  final int index;
  final String placeName;
  final List<LocalStoreInformation> data;

  const CustomExpansionTile({
    Key? key,
    required this.day,
    required this.index,
    required this.placeName,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final result  = calculatedTotalDistanceTravelled(data).toStringAsFixed(2);

    return ExpansionTile(
      leading: GISDynamicText(
        isHeadings: true,
        text: "Day  $day",
      ),
      title: Text(
        placeName,
        style: mainPlaceTextStyle(),
      ),
      subtitle: Text(
        'Distance: ${getCalculatedDistanceUnits(
          double.parse(result),
        )}',
        style: distanceTextStyle(),
      ),
      children: _getChildren(context, data),
    );
  }

  List<Widget> _getChildren(BuildContext context, List<LocalStoreInformation> userDay) {
    return List<Widget>.generate(
      data.length,
      (i) {
        String placeName = data[i].locationName;
        List<Uint8List>? listData = data[i].unitImagesFileList;
        return ListTile(
          title: Text('${i + 1}. ${getTravelledPlaceName(placeName)}'),
          subtitle: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: imageContainerListForItinerary(context, listData!),
              ),
            ),
          ),
        );
      },
    );
  }
}
