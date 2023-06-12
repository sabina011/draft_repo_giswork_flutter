import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/application/package_information/bloc/package_information_bloc.dart';
import 'package:myapp/data/package_information/datastore/models/package_information_response.dart';
import 'package:myapp/resources/dimensions/app_dimensions.dart';
import 'package:myapp/screens/lay_traveller/wigets/text_styles.dart';
import 'package:myapp/utils/functions/app_size.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';
import 'package:myapp/widgets/widget_bloc_state.dart';

import '../application/injectable/injection.dart';
import '../config/routes/routes_handler.dart';
import '../resources/decorations/container_decoration.dart';

class PackageSearchBox extends StatefulWidget {
  final TextEditingController searchBoxController;

  const PackageSearchBox({
    Key? key,
    required this.searchBoxController,
  }) : super(key: key);

  @override
  State<PackageSearchBox> createState() => _PackageSearchBoxState();
}

class _PackageSearchBoxState extends State<PackageSearchBox> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = getDeviceScreenSize(context);
    return Container(
      width: size.width * 0.9,
      decoration: containerSearchBoxDecoration,
      child: Padding(
        padding: const EdgeInsets.all(AppDimension.DimensionPaddingSize16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Search Package',
              style: mainPlaceTextStyle(),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            TextField(
              controller: widget.searchBoxController,
              decoration: InputDecoration(
                hintText: 'Search',
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                  ),
                  iconSize: 26.0,
                  onPressed: () {
                    if (!widget.searchBoxController.text.isEmpty) {
                      _showSearchResults(
                        query: widget.searchBoxController.text,
                        size: size,
                        context: context,
                        // widget.getPackageInfoBloc,
                      );
                    } else {
                      GISFlutterToast(
                          context, "Insert text to search package!");
                    }
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showSearchResults({
    required BuildContext context,
    required String query,
    required Size size,
  }) {
    final getPackageInformationBloc = getIt<GetPackageInformationBloc>();

    showDialog(
      context: context, // Use the captured context
      builder: (context) {
        return AlertDialog(
          title: Text('Itinerary Packages'),
          content: Container(
            height: size.height * 0.3,
            width: double.maxFinite,
            child: BlocProvider(
              create: (context) => getPackageInformationBloc
                ..add(
                  GetPackageInformationEvent.getPackageInformation(
                    query: query,
                  ),
                ),
              child: BlocBuilder<GetPackageInformationBloc,
                  GetPackageInformationState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    initial: () => SizedBox(),
                    loading: () => Align(
                      alignment: Alignment.center,
                      child: const CircularProgressIndicator(),
                    ),
                    success: (packageInformationResponse) {
                      getPackageInformationBloc.close();
                      return PackageListQueryItemBuilder(
                        packageInformationResponse: packageInformationResponse,
                      );
                    },
                    error: (errMessage) {
                      getPackageInformationBloc.close();
                      return buildError(context, errMessage);
                    },
                    orElse: () => SizedBox(),
                  );
                },
              ),
            ),
          ),
        );
      },
    );
  }
}

class PackageListQueryItemBuilder extends StatelessWidget {
  final PackageInformationResponse packageInformationResponse;

  const PackageListQueryItemBuilder({
    Key? key,
    required this.packageInformationResponse,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = getDeviceScreenSize(context);
    final packageItr = packageInformationResponse.packageInfoResponse;
    return packageItr.length > 0
        ? SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: packageItr.length,
              itemBuilder: (context, index) {
                final packageItem = packageItr[index];
                return ListTile(
                    leading: Text(packageItem.id.toString()),
                    title: Text(packageItem.packageName),
                    onTap: () {
                      //close the dialog box
                      Navigator.of(context).pop();

                      //jump to user itinerary package screen
                      jumpToUserItineraryPackageScreen(
                        context: context,
                        packageID: packageItem.id,
                        packageName: packageItem.packageName,
                        usersInfo: packageItem.contributors,
                        packagesInfoMainPlaceItemResponse:
                            packageItem.packagesInfoMainPlaceItemResponse,
                      );
                    });
              },
            ),
          )
        : Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.data_array,
                ),
                Text(
                  'Similar package not found!',
                ),
              ],
            ),
          );
  }
}
//
// class ListQueryItemBuilder extends StatelessWidget {
//   final List<ItineraryShowItemsResponse> itineraryItemShowResponse;
//
//   const ListQueryItemBuilder({
//     Key? key,
//     required this.itineraryItemShowResponse,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return itineraryItemShowResponse.length > 0
//         ? ListView.builder(
//             shrinkWrap: true,
//             itemCount: itineraryItemShowResponse.length,
//             itemBuilder: (context, index) {
//               ItineraryShowItemsResponse response =
//                   itineraryItemShowResponse[index];
//               return ListTile(
//                   title: Text(response.mainPlaceName),
//                   subtitle: Text(response.placeCount.toString()),
//                   onTap: () {
//                     List<Map<String, dynamic>> mainPlaceItems = [];
//                     filteredAndShowData(
//                         context, itineraryItemShowResponse, mainPlaceItems);
//                   });
//             },
//           )
//         : Center(
//             child: Text(
//               'Item Empty! No data.',
//             ),
//           );
//   }
// }
