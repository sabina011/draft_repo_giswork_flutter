import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../utils/services/local_storage/hive/hive_store_provider.dart';
import '../../../widgets/widget.dart';
import '../screen_lay_traveller_map_starter.dart';

class LayTravellerVisitedPlaces extends StatelessWidget {
  const LayTravellerVisitedPlaces({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Consumer<HiveOperationsProvider>(
        builder: (context, data, child) => data.isUserDayHiveBoxHasData
            ? Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GISDynamicText(
                    text: 'Travelled Places',
                    isHeadings: true,
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: travelledPlaceList(data.userDay),
                    ),
                  )
                ],
              )
            : SizedBox(),
      ),
    );
  }
}
