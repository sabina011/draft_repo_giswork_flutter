import 'package:flutter/material.dart';
import 'package:myapp/utils/functions/function_navigation_logic.dart';
import 'package:provider/provider.dart';

import '../../../application/provider/location_service_provider.dart';
import '../../../widgets/widget.dart';

class ShowCurrentUserLocation extends StatelessWidget {
  const ShowCurrentUserLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Icon(
            Icons.location_on_sharp,
            color: Colors.red,
          ),
          Consumer<LocationServiceProvider>(
            builder: (context, data, child) => data.locationName.isNotEmpty
                ? GestureDetector(
                    onTap: () {},
                    child: GISDynamicText(
                      text: data.locationName,
                      isHeadings: true,
                    ),
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}

class ShowCurrentUserLocationWithCloseOption extends StatelessWidget {
  const ShowCurrentUserLocationWithCloseOption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.location_on_sharp,
                color: Colors.red,
              ),
              Consumer<LocationServiceProvider>(
                builder: (context, data, child) => data.locationName.isNotEmpty
                    ? GestureDetector(
                        onTap: () {},
                        child: GISDynamicText(
                          text: data.locationName,
                          isHeadings: true,
                        ),
                      )
                    : SizedBox(),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              popScreen(context);
            },
            icon: Icon(Icons.close),
          )
        ],
      ),
    );
  }
}
