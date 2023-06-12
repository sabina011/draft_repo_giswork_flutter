import 'package:flutter/material.dart';
import 'package:myapp/application/custom_package/bloc/custom_bloc.dart';
import 'package:myapp/application/places/bloc/place_new_bloc.dart';
import 'package:myapp/application/user_posts/bloc/user_post_new_bloc.dart';
import 'package:myapp/config/routes/routes_path.dart';
import 'package:myapp/data/itinerary_show/datastore/models/itinerary_response_items.dart';
import 'package:myapp/data/place_information/datastore/models/place_information_response_items.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/screens/customize/screen_customize_user_post.dart';
import 'package:myapp/screens/itinerary_traveller/itinerary_intial_start/itinerary_user_profile_list_screen.dart';
import 'package:myapp/screens/itinerary_traveller/itinerary_intial_start/itinerary_user_profile_selected_list_package_screen.dart';
import 'package:myapp/screens/itinerary_traveller/itinerary_list/explore_main_place_information.dart';
import 'package:myapp/screens/itinerary_traveller/shared/itinerary_get_data_by_bloc.dart';
import 'package:myapp/screens/local_store/screen_local_post_selected_days_lists.dart';
import 'package:myapp/screens/login/login_screen.dart';
import 'package:myapp/screens/place_posts/place_view_holder.dart';

import '../../application/connection/bloc/connection_bloc.dart';
import '../../application/itinerary_show/itinerary_show_bloc.dart';
import '../../application/place_information/bloc/place_information_bloc.dart';
import '../../application/upload_package/bloc/upload_package_bloc.dart';
import '../../data/itinerary_show/datastore/models/itinerary_main_place_items.dart';
import '../../data/package_information/datastore/models/package_information_contributors_items.dart';
import '../../data/package_information/datastore/models/package_information_main_place.dart';
import '../../data/place_information/datastore/models/place_information_geo_points_response.dart';
import '../../data/user_itinerary_information/datastore/models/user_itinerary_package_items_response.dart';
import '../../data/user_post/datastore/model/user_post_item.dart';
import '../../screens/customize/screen_customize_upload_holder.dart';
import '../../screens/itinerary_traveller/itinerary_intial_start/widgets/show_itinerary_traveler_on_map_screen.dart';
import '../../screens/itinerary_traveller/itinerary_map/Itinerary_place_information_map_show.dart';
import '../../screens/itinerary_traveller/itinerary_map/image_associated_information_navigate.dart';
import '../../screens/itinerary_traveller/itinerary_newsfeed/news_feed_associated_itinerary_view_on_map.dart';
import '../../screens/itinerary_traveller/package_screen.dart';
import '../../screens/itinerary_traveller/show_user_itinerary_on_map.dart';
import '../../screens/itinerary_traveller/widgets/itinerary_data_view.dart';
import '../../screens/lay_traveller/lay_traveller_upload_holder.dart';
import '../../screens/lay_traveller/profile/lay_traveler_profile_screen.dart';
import '../../screens/lay_traveller/profile/lay_traveler_view_package_screen.dart';
import '../../screens/lay_traveller/screen_lay_traveller_map_starter.dart';
import '../../screens/lay_traveller/show_lay_traveler_day_items_on_map.dart';

void jumpToHomeScreen(BuildContext context) {
  Navigator.of(context)
      .pushNamedAndRemoveUntil(pathHomeScreenPage, (_) => false);
}

void jumpToNextMapTravellingScreen(BuildContext context) {
  Navigator.of(context).pushNamed(pathNextMapTravelling);
}

void jumpToLayTravellerMapStarter(
    BuildContext context, NetworkConnectionBloc networkConnectionBloc) {
  Navigator.of(context).pushNamed(
    pathLayTravellerMap,
    arguments: LayTravellerMapStarter(
      networkConnectionBloc: networkConnectionBloc,
    ),
  );
}

//place view holder screen
void jumpToPlaceViewHolder(BuildContext context, GetPlacesBloc getPlacesBloc,
    UserPostBloc userPostBloc) {
  Navigator.of(context).pushNamedAndRemoveUntil(
    pathPlaceViewHolderPage,
    (_) => false,
    arguments: PlaceViewHolder(
      getPlacesBloc: getPlacesBloc,
      getUserPostBloc: userPostBloc,
    ),
  );
}

void jumpToUserPostSelected(
    BuildContext context, int selectedDay, UserPostBloc userPostBloc) {
  Navigator.of(context).pushNamedAndRemoveUntil(
    pathUserPostSelected,
    (_) => false,
    arguments: UserPostSelectedScreen(
      selected_day: selectedDay,
      bloc: userPostBloc,
    ),
  );
}

void jumpToLoginScreen(
  BuildContext context,
  bool isUploadPackage, {
  bool? isCompletedPackage,
  Map<String, dynamic> mapUserData = const {},
  List<Map<String, dynamic>>? mapUploadPackage,
}) {
  Navigator.of(context).pushNamedAndRemoveUntil(
    pathLoginPage,
    (_) => false,
    arguments: LoginFormScreen(
      isCompletedPackage: isCompletedPackage!,
      isPackageUpload: isUploadPackage,
      mapInputs: mapUserData,
      mapUploadPackage: mapUploadPackage!,
    ),
  );
}

void jumpToCustomizeUploadHolder(
  BuildContext context,
  CustomPostBloc customPostBloc,
  Map<String, dynamic> mapUserData,
) {
  Navigator.of(context).pushNamedAndRemoveUntil(
    pathCustomizeUploadHolder,
    (_) => false,
    arguments: CustomizeUploadHolder(
      customPostBloc: customPostBloc,
      customPostInputs: mapUserData,
    ),
  );
}

void jumpToCustomizeSingleDayInformation(
  BuildContext context,
  UserPostItem userPostItem,
) {
  Navigator.of(context).pushNamedAndRemoveUntil(
      pathCustomizeSingleDayInformation, (_) => false,
      arguments: CustomizeSingleDayInformation(userPost: userPostItem));
}

void jumpToLocalStoreSelectionScreen(BuildContext context) {
  Navigator.of(context)
      .pushNamedAndRemoveUntil(pathLocalStoreSelection, (route) => false);
}

void jumpToLocalPostPackageViewHolder(BuildContext context, int selected_day) {
  Navigator.of(context).pushNamedAndRemoveUntil(
      pathLocalPostPackageViewHolder,
      arguments: selected_day,
      (route) => false);
}

void jumpToLocalStoreSinglePostViewHolder(
    BuildContext context, LocalStoreInformation userDay) {
  Navigator.of(context)
      .pushNamed(pathLocalStoreSinglePostViewHolder, arguments: userDay);
}

void jumpToPackageUploadHolder(
    BuildContext context,
    UploadPackageBloc uploadPackageBloc,
    List<Map<String, dynamic>> mapUserData,
    bool isCompletedPackage) {
  Navigator.of(context).pushNamedAndRemoveUntil(
    pathUploadPackageViewHolder,
    (_) => false,
    arguments: LayTravellerUploadViewHolder(
      uploadPackageBloc: uploadPackageBloc,
      userDataInputAsMap: mapUserData,
      isCompletePackage: isCompletedPackage,
    ),
  );
}

void jumpToUserCategoryScreen(BuildContext context) {
  Navigator.of(context)
      .pushNamedAndRemoveUntil(pathUserCategory, (route) => false);
}

void jumpToItineraryTraveller(BuildContext context) {
  Navigator.of(context)
      .pushNamedAndRemoveUntil(pathItineraryTraveller, (route) => false);
}

void jumpToUserProfileListScreen(BuildContext context,
    GetPlaceInformationBloc getPlaceInformationBloc, String placeName) {
  Navigator.of(context).pushNamed(
    pathToUserProfileListScreen,
    arguments: ItineraryUserProfileListScreen(
      getPlaceInformationBloc: getPlaceInformationBloc,
      getPlaceName: placeName,
    ),
  );
}

void jumpToItineraryShowPackage(
    BuildContext context, GetItineraryShowBloc getItineraryShowBloc) {
  Navigator.of(context).pushNamed(
    pathToItineraryShowPackage,
    arguments: ItineraryShowPackage(
      getItineraryShowBloc: getItineraryShowBloc,
    ),
  );
}

void jumpToUserProfileSelectedItineraryScreen(BuildContext context,
    List<PlaceInformationItemsResponse> itemListResponse, int userId) {
  Navigator.of(context).pushNamed(pathToUserProfileSelectedItineraryScreen,
      arguments: ItineraryUserProfileSelectedScreen(
        userId: userId,
        itemResponse: itemListResponse,
      ));
}

void jumpToItineraryViewOnMap(BuildContext context,
    List<PlaceInformationItemsResponse> itemListResponse) {
  Navigator.of(context).pushNamed(pathToItineraryViewOnMapScreen,
      arguments: NewsFeedAssociatedItineraryViewOnMapScreen(
        placeInformationItemResponse: itemListResponse,
      ));
}

void jumpToMainPlaceInformationItineraryShowScreen(
    BuildContext context,
    int day,
    int index,
    String placeName,
    List<ItineraryPlaceInformationResponse> itineraryPlaceInformation) {
  Navigator.of(context).pushNamed(
    pathToExploreMainPlaceItineraryInformationScreen,
    arguments: ExploreMainPlaceItineraryInformation(
      day: day,
      index: index,
      placeName: placeName,
      itineraryPlaceInformation: itineraryPlaceInformation,
    ),
  );
}

void jumpToImageAssociatedInformationViewScreen(
    BuildContext context,
    int day,
    int? postInformationId,
    GeoPointsResponse geoPointsResponse,
    String placeName) {
  Navigator.of(context).pushNamed(
    pathToImageAssociatedInformationViewScreen,
    arguments: ImageAssociatedInformationViewScreen(
      day: day,
      postInformationId: postInformationId ?? 0,
      geoPointsResponse: geoPointsResponse,
      placeName: placeName,
    ),
  );
}

void jumpToItineraryShowScreenOnMap(BuildContext context,
    List<ItineraryShowItemsResponse> itineraryShowItemsResponse) {
  Navigator.of(context).pushNamed(
    pathToItineraryShowScreenOnMap,
    arguments: ItineraryPlaceInformationMapShow(
      itineraryShowItemResponse: itineraryShowItemsResponse,
    ),
  );
}

void jumpToItineraryListItemScreen(BuildContext context,
    List<Map<String, dynamic>> mainPlaceInfoItemResponse) {
  Navigator.of(context).pushNamed(
    pathToItineraryListItemScreen,
    arguments: ItineraryListItemScreen(
      mainPlaceItems: mainPlaceInfoItemResponse,
    ),
  );
}

void jumpToLayTravelerItineraryOnMapScreen(
    BuildContext context, List<LocalStoreInformation> userDayItemResponse) {
  Navigator.of(context).pushNamed(
    pathToLayItineraryOnMap,
    arguments: ShowLayTravelerDayItemsOnMapScreen(
      userDayTravelerInformation: userDayItemResponse,
    ),
  );
}

void jumpToShowItineraryTravelerOnMapScreen(BuildContext context, int userId,
    List<PlaceInformationItemsResponse> itineraryShowItemsResponse) {
  Navigator.of(context).pushNamed(
    pathToShowItineraryTravelerOnMap,
    arguments: ShowItineraryTravelerOnMapScreen(
      userId: userId,
      itineraryShowItemsResponse: itineraryShowItemsResponse,
    ),
  );
}

void jumpToLayTravelerProfileScreen(
  BuildContext context,
  List<LocalStoreInformation> userDayItemResponse, {
  bool? isPackageCompleted,
}) {
  Navigator.of(context).pushNamed(
    pathToLayTravelerProfileScreen,
    arguments: LayTravelerProfile(
      isPackageCompleted: isPackageCompleted,
      userDayItemResponse: userDayItemResponse,
    ),
  );
}

void jumpToLayTravelerViewPackageScreen(
    BuildContext context, List<LocalStoreInformation> userDayItemResponse) {
  Navigator.of(context).pushNamed(
    pathToLayTravelerProfilePackageViewScreen,
    arguments: LayTravelerViewPackageScreen(
      userDayItemResponse: userDayItemResponse,
    ),
  );
}

void jumpToUserItineraryPackageMapShowScreen(BuildContext context,
    List<UserItineraryPackageItemsResponse> userItineraryPackageResponse) {
  Navigator.of(context).pushNamed(pathToUserItineraryMapTravelScreen,
      arguments: ShowUserItineraryInformationOnMap(
        userItineraryPackageResponse: userItineraryPackageResponse,
      ));
}

void jumpToUserItineraryPackageScreen({
  required BuildContext context,
  required int packageID,
  required String packageName,
  required List<ContributorsItemsResponse> usersInfo,
  required List<PackageInfoMainPlaceItemsResponse>
      packagesInfoMainPlaceItemResponse,
}) {
  Navigator.of(context).pushNamed(
    pathToUserItineraryPackageScreen,
    arguments: PackageScreen(
      packageID: packageID,
      packageName: packageName,
      usersInfo: usersInfo,
      packagesInfoMainPlaceItemResponse: packagesInfoMainPlaceItemResponse,
    ),
  );
}
