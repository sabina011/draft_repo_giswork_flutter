import 'package:flutter/material.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/screens/itinerary_traveller/widgets/widget.dart';
import 'package:myapp/screens/lay_traveller/wigets/custom_expansiontile.dart';
import 'package:myapp/screens/lay_traveller/wigets/text_styles.dart';

class ExpandableListView extends StatefulWidget {
  final List<LocalStoreInformation> userDay;

  const ExpandableListView({Key? key, required this.userDay}) : super(key: key);

  @override
  _ExpandableListViewState createState() => _ExpandableListViewState();
}

class _ExpandableListViewState extends State<ExpandableListView> {
  var mainPlaceItems = [];

  @override
  void initState() {
    super.initState();
    loadAllAndFilterItinerary();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: screenHeight * 0.95,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'Itinerary',
                    style: itineraryTextStyle(),
                  ),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: mainPlaceItems.length,
                      itemBuilder: (context, index) {
                        final int day = mainPlaceItems[index]['day'];
                        final String mainPlaceName =
                            mainPlaceItems[index]['main_place'];
                        final List<LocalStoreInformation> placeItems =
                            mainPlaceItems[index]['data'];
                        return CustomExpansionTile(
                          day: day,
                          index: index,
                          placeName: mainPlaceName,
                          data: placeItems,
                        );
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void loadAllAndFilterItinerary() {
    final data = widget.userDay;
    List<String> mainPlaceList =
        data.map((e) => getLocationPlaceName(e.locationName)).toList();
    Set<String> mainPlaceFilteredList = Set.from(mainPlaceList);

    for (int i = 0; i < mainPlaceFilteredList.length; i++) {
      List<LocalStoreInformation> filteredData = data
          .where((e) =>
              getLocationPlaceName(e.locationName) ==
              mainPlaceFilteredList.elementAt(i))
          .toList();
      List<int> dayListTotal = filteredData.map((e) => e.day).toList();
      Set dayListFiltered = Set.from(dayListTotal);

      for (var item in dayListFiltered) {
        List<LocalStoreInformation> dataItems =
            filteredData.where((e) => e.day == item).toList();
        mainPlaceItems.add({
          'day': item,
          'main_place': mainPlaceFilteredList.elementAt(i),
          'data': dataItems
        });
      }
    }

    mainPlaceItems.sort((a, b) {
      return a['day'].toString().compareTo(
          b['day'].toString());
    });

  }
}
