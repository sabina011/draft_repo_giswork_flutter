import 'package:flutter/material.dart';
import 'package:myapp/screens/itinerary_traveller/widgets/widget.dart';

import '../../../../model/hive_model/local_store_model.dart';

class ItemInformationScrollable extends StatelessWidget {
  final List<LocalStoreInformation> localStoredItemInformation;

  const ItemInformationScrollable({
    Key? key,
    required this.localStoredItemInformation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      child: Row(
        children: localStoredItemInformation
            .map(
              (e) => Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Row(
              children: [
                Icon(
                  Icons.location_on,
                  size: 20,
                  color: Colors.black45,
                ),
                Text(
                  getLocationPlaceName(e.locationName),
                ),
              ],
            ),
          ),
        )
            .toList(),
      ),
    );
  }

}
