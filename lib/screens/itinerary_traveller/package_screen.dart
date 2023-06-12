import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:myapp/application/user_itinerary_information/bloc/user_itinerary_package_information_bloc.dart';
import 'package:myapp/data/package_information/datastore/models/package_information_contributors_items.dart';
import 'package:myapp/data/package_information/datastore/models/package_information_main_place.dart';
import 'package:myapp/resources/styles/app_style.dart';
import 'package:myapp/utils/functions/app_size.dart';
import 'package:myapp/utils/functions/function_flutter_toast.dart';

import '../../application/injectable/injection.dart';
import '../../config/routes/routes_handler.dart';

class PackageScreen extends StatefulWidget {
  final int packageID;
  final String packageName;
  final List<ContributorsItemsResponse> usersInfo;
  final List<PackageInfoMainPlaceItemsResponse>
      packagesInfoMainPlaceItemResponse;

  const PackageScreen({
    super.key,
    required this.packageID,
    required this.packageName,
    required this.usersInfo,
    required this.packagesInfoMainPlaceItemResponse,
  });

  @override
  State<PackageScreen> createState() => _PackageScreenState();
}

class _PackageScreenState extends State<PackageScreen> {
  final getUserItineraryPackageInformationBloc =
      getIt<GetUserItineraryPackageInformationBloc>();

  bool onPackageLoading = false;

  @override
  Widget build(BuildContext context) {
    final size = getDeviceScreenSize(context);
    final itemMinHeight = size.height * 0.001;
    final itemMaxHeight = size.height * 0.01;

    final packageInfoMainPlaceItr = widget.packagesInfoMainPlaceItemResponse;
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Package Screen',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Package Name',
                style: AppTextStyle.textMainKeyStyle,
              ),
              SizedBox(
                height: itemMaxHeight,
              ),
              Card(
                elevation: 8.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Container(
                  width: size.width,
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      widget.packageName,
                      style: AppTextStyle.textSubValueStyle,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: itemMaxHeight * 2,
              ),
              Text(
                'Main places',
                style: AppTextStyle.textMainKeyStyle,
              ),
              SizedBox(
                height: itemMaxHeight,
              ),
              MainPlacesCardItems(
                packageInfoMainPlaceItr: packageInfoMainPlaceItr,
              ),
              SizedBox(
                height: itemMaxHeight * 2,
              ),
              widget.usersInfo.isNotEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Place Contributors',
                          style: AppTextStyle.textMainKeyStyle,
                        ),
                        SizedBox(
                          height: itemMaxHeight,
                        ),
                        PackageContributorItems(
                          onPackageLoading: onPackageLoading,
                          packageID: widget.packageID,
                          usersInfo: widget.usersInfo,
                          getUserItineraryPackageInformationBloc:
                              getUserItineraryPackageInformationBloc,
                        ),
                      ],
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}

class MainPlacesCardItems extends StatelessWidget {
  final List<PackageInfoMainPlaceItemsResponse> packageInfoMainPlaceItr;

  const MainPlacesCardItems({
    Key? key,
    required this.packageInfoMainPlaceItr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = getDeviceScreenSize(context);
    final itemMaxHeight = size.height * 0.01;

    return Card(
      elevation: 8.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          10.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: packageInfoMainPlaceItr.length,
          itemBuilder: (context, index) {
            final locationPlaces = packageInfoMainPlaceItr[index].places;
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  packageInfoMainPlaceItr[index].name,
                  style: AppTextStyle.textSubValueStyle,
                ),
                SizedBox(
                  height: itemMaxHeight * 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    "Sub Places ",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: itemMaxHeight,
                ),
                Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: locationPlaces.length,
                    itemBuilder: (context, itemIndex) {
                      final place = locationPlaces[itemIndex];
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(place),
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: itemMaxHeight * 2,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

class PackageContributorItems extends StatefulWidget {
  bool onPackageLoading;
  final int packageID;
  final List<ContributorsItemsResponse> usersInfo;
  final GetUserItineraryPackageInformationBloc
      getUserItineraryPackageInformationBloc;

  PackageContributorItems(
      {Key? key,
      required this.onPackageLoading,
      required this.packageID,
      required this.usersInfo,
      required this.getUserItineraryPackageInformationBloc})
      : super(key: key);

  @override
  State<PackageContributorItems> createState() =>
      _PackageContributorItemsState();
}

class _PackageContributorItemsState extends State<PackageContributorItems> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      child: Card(
        elevation: 8.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            10.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget.usersInfo.length,
            itemBuilder: (context, index) {
              final userInfo = widget.usersInfo[index];
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          userInfo.userID.toString(),
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          width: 8.0,
                        ),
                        Text(
                          userInfo.userName,
                        ),
                      ],
                    ),
                    BlocProvider<GetUserItineraryPackageInformationBloc>(
                      create: (context) =>
                          widget.getUserItineraryPackageInformationBloc,
                      child: BlocListener<
                          GetUserItineraryPackageInformationBloc,
                          GetUserItineraryPackageInformationState>(
                        bloc: widget.getUserItineraryPackageInformationBloc,
                        listener: (context, state) {
                          state.maybeWhen(
                              initial: () {},
                              loading: () {},
                              success: (itineraryPackageInfoResponse) {
                                setState(() {
                                  widget.onPackageLoading = false;
                                });
                                jumpToUserItineraryPackageMapShowScreen(
                                    context,
                                    itineraryPackageInfoResponse
                                        .userItineraryPackageItemResponse);
                              },
                              error: (err) {
                                setState(() {
                                  widget.onPackageLoading = false;
                                });
                                return GISFlutterToast(
                                    context, 'Oops! unable to fetch');
                              },
                              orElse: () {});
                        },
                        child: !widget.onPackageLoading
                            ? ElevatedButton(
                                onPressed: () {
                                  setState(() {
                                    widget.onPackageLoading = true;
                                  });
                                  widget.getUserItineraryPackageInformationBloc
                                      .add(GetUserItineraryPackageInformationEvent
                                          .getUserItineraryPackageInformationResponse(
                                    userId: userInfo.userID,
                                    packageID: widget.packageID,
                                  ));
                                },
                                child: Text(
                                  'View Package',
                                ),
                              )
                            : Center(
                                child: CircularProgressIndicator(),
                              ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

// class ParticularUserFetchItem extends StatelessWidget {
//   final int userID;
//   final GetPlaceInformationBloc getPlaceInformationBloc;
//
//   ParticularUserFetchItem({
//     Key? key,
//     required this.userID,
//     required this.getPlaceInformationBloc,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocProvider<GetPlaceInformationBloc>(
//         create: (context) => getPlaceInformationBloc,
//         child: BlocListener<GetPlaceInformationBloc, GetPlaceInformationState>(
//           bloc: getPlaceInformationBloc,
//           listener: (BuildContext context, GetPlaceInformationState state) {
//             state.maybeWhen(
//                 initial: () {},
//                 loading: () {},
//                 success: (placeInfoItemResponse) {
//                   Navigator.of(context).push(MaterialPageRoute(
//                     builder: (context) => ShowItineraryTravelerOnMapScreen(
//                       userId: userID,
//                       itineraryShowItemsResponse: placeInfoItemResponse,
//                     ),
//                   ));
//                 },
//                 error: (err) {
//                   GISFlutterToast(context, 'Oops! Unable to fetch package!');
//                 },
//                 orElse: () {});
//           },
//         ),
//       ),
//     );
//   }
// }
