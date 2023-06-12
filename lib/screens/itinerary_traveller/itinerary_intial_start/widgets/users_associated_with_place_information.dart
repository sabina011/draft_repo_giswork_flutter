import 'package:flutter/material.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_response_items.dart';

import '../../../../config/routes/routes_handler.dart';
import '../../../../utils/functions/function_reuse.dart';

class UserAssociatedPlaceInformationBuilder extends StatelessWidget {
  final List<int> users;
  final List<PlaceInformationItemsResponse> placeInfoItemResponse;

  const UserAssociatedPlaceInformationBuilder(
      {Key? key, required this.users, required this.placeInfoItemResponse})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: ScrollPhysics(),
        shrinkWrap: true,
        itemCount: users.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              ///intial itinerary show logical part.
              // jumpToUserProfileSelectedItineraryScreen(
              //     context, placeInfoItemResponse, users[index]);

              ///latest itinerary show version
              jumpToShowItineraryTravelerOnMapScreen(
                  context, users[index], placeInfoItemResponse);
            },
            contentPadding: EdgeInsets.symmetric(
              horizontal: 20.0,
              vertical: 10.0,
            ),
            leading: Container(
              padding: EdgeInsets.only(
                right: 12.0,
              ),
              decoration: new BoxDecoration(
                border: new Border(
                  right: new BorderSide(
                    width: 1.0,
                    color: Colors.white24,
                  ),
                ),
              ),
              child: Icon(
                Icons.place_outlined,
                color: getIconColorFromApplicationContext(
                  context,
                ),
              ),
            ),
            title: Text(
              "User Info" + users[index].toString(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Row(
              children: <Widget>[
                Icon(
                  Icons.linear_scale,
                  color: Theme.of(context).errorColor,
                ),
                Expanded(
                  child: Text(
                    "Maximum Day " + users[index].toString(),
                  ),
                )
              ],
            ),
            trailing: Icon(
              Icons.keyboard_arrow_right,
              size: 30.0,
              color: Colors.black,
            ),
          );
        },
      ),
    );
  }
}
