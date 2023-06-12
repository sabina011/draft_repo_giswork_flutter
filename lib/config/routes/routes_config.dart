import 'package:flutter/material.dart';
import 'package:myapp/config/routes/routes_path.dart';
import 'package:myapp/model/hive_model/local_store_model.dart';
import 'package:myapp/screens/customize/screen_customize_upload_holder.dart';
import 'package:myapp/screens/itinerary_traveller/itinerary_intial_start/itinerary_user_profile_list_screen.dart';
import 'package:myapp/screens/itinerary_traveller/itinerary_intial_start/itinerary_user_profile_selected_list_package_screen.dart';
import 'package:myapp/screens/itinerary_traveller/itinerary_list/explore_main_place_information.dart';
import 'package:myapp/screens/itinerary_traveller/package_screen.dart';
import 'package:myapp/screens/lay_traveller/profile/lay_traveler_profile_screen.dart';
import 'package:myapp/screens/lay_traveller/screen_lay_traveller_map_starter.dart';
import 'package:myapp/screens/lay_traveller/screen_start_next_map_travel.dart';
import 'package:myapp/screens/local_store/screen_local_post_pacakage_list.dart';
import 'package:myapp/screens/local_store/screen_local_post_selected_days_lists.dart';
import 'package:myapp/screens/login/login_screen.dart';
import 'package:myapp/screens/splash/widget/user_category_screen.dart';

import '../../screens/customize/screen_customize_user_post.dart';
import '../../screens/error_page.dart';
import '../../screens/home/screen_home.dart';
import '../../screens/itinerary_traveller/itinerary_intial_start/itinerary_traveller_screen.dart';
import '../../screens/itinerary_traveller/itinerary_intial_start/widgets/show_itinerary_traveler_on_map_screen.dart';
import '../../screens/itinerary_traveller/itinerary_map/Itinerary_place_information_map_show.dart';
import '../../screens/itinerary_traveller/itinerary_map/image_associated_information_navigate.dart';
import '../../screens/itinerary_traveller/itinerary_newsfeed/news_feed_associated_itinerary_view_on_map.dart';
import '../../screens/itinerary_traveller/shared/itinerary_get_data_by_bloc.dart';
import '../../screens/itinerary_traveller/show_user_itinerary_on_map.dart';
import '../../screens/itinerary_traveller/widgets/itinerary_data_view.dart';
import '../../screens/lay_traveller/lay_traveller_upload_holder.dart';
import '../../screens/lay_traveller/profile/lay_traveler_view_package_screen.dart';
import '../../screens/lay_traveller/show_lay_traveler_day_items_on_map.dart';
import '../../screens/local_store/screen_local_post_select_day.dart';
import '../../screens/local_store/screen_local_post_specific_post.dart';
import '../../screens/place_posts/place_view_holder.dart';

class RouteGenerate {
  static Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
    final args = routeSettings.arguments;

    switch (routeSettings.name) {
      case pathHomeScreenPage:
        return MaterialPageRoute(
          builder: (_) => Home(),
        );

      case pathNextMapTravelling:
        return MaterialPageRoute(
          builder: (_) => NextMapTravellingScreen(),
        );

      case pathPlaceViewHolderPage:
        return MaterialPageRoute(builder: (_) {
          PlaceViewHolder placeViewHolder = args as PlaceViewHolder;
          return PlaceViewHolder(
            getPlacesBloc: placeViewHolder.getPlacesBloc,
            getUserPostBloc: placeViewHolder.getUserPostBloc,
          );
        });

      case pathUserPostSelected:
        return MaterialPageRoute(
          builder: (_) {
            UserPostSelectedScreen selectedScreen =
                args as UserPostSelectedScreen;
            return UserPostSelectedScreen(
              selected_day: selectedScreen.selected_day,
              bloc: selectedScreen.bloc,
            );
          },
        );

      case pathLayTravellerMap:
        return MaterialPageRoute(
          builder: (_) {
            LayTravellerMapStarter layTravellerMapStarterArgs =
                args as LayTravellerMapStarter;
            return LayTravellerMapStarter(
              networkConnectionBloc:
                  layTravellerMapStarterArgs.networkConnectionBloc,
            );
          },
        );

      case pathLoginPage:
        return MaterialPageRoute(
          builder: (_) {
            LoginFormScreen loginArgs = args as LoginFormScreen;

            return LoginFormScreen(
              isCompletedPackage: loginArgs.isCompletedPackage,
              isPackageUpload: loginArgs.isPackageUpload,
              mapInputs: loginArgs.mapInputs,
              mapUploadPackage: loginArgs.mapUploadPackage,
            );
          },
        );

      case pathCustomizeUploadHolder:
        return MaterialPageRoute(builder: (_) {
          CustomizeUploadHolder customArgs = args as CustomizeUploadHolder;
          return CustomizeUploadHolder(
            customPostBloc: customArgs.customPostBloc,
            customPostInputs: customArgs.customPostInputs,
          );
        });

      case pathUploadPackageViewHolder:
        return MaterialPageRoute(builder: (_) {
          LayTravellerUploadViewHolder layTravllerArgs =
              args as LayTravellerUploadViewHolder;
          return LayTravellerUploadViewHolder(
            uploadPackageBloc: layTravllerArgs.uploadPackageBloc,
            userDataInputAsMap: layTravllerArgs.userDataInputAsMap,
            isCompletePackage: layTravllerArgs.isCompletePackage,
          );
        });

      case pathCustomizeSingleDayInformation:
        return MaterialPageRoute(builder: (_) {
          CustomizeSingleDayInformation customArgs =
              args as CustomizeSingleDayInformation;
          return CustomizeSingleDayInformation(
            userPost: customArgs.userPost,
          );
        });

      case pathLocalStoreSelection:
        return MaterialPageRoute(builder: (_) {
          return LocalStoreSelection();
        });

      case pathLocalPostPackageViewHolder:
        return MaterialPageRoute(builder: (_) {
          return LocalPostPackageViewHolder(selected_day: args as int);
        });

      case pathLocalStoreSinglePostViewHolder:
        return MaterialPageRoute(builder: (_) {
          return LocalStoreSinglePostViewHolder(
              userDay: args as LocalStoreInformation);
        });

      case pathUserCategory:
        return MaterialPageRoute(builder: (_) {
          return UserCategoryScreen();
        });

      case pathItineraryTraveller:
        return MaterialPageRoute(builder: (_) {
          return ItineraryTravellerScreen();
        });

      case pathToItineraryShowPackage:
        return MaterialPageRoute(builder: (_) {
          ItineraryShowPackage itineraryShowPackageArgs =
              args as ItineraryShowPackage;
          return ItineraryShowPackage(
            getItineraryShowBloc: itineraryShowPackageArgs.getItineraryShowBloc,
          );
        });

      case pathToUserProfileListScreen:
        return MaterialPageRoute(builder: (_) {
          ItineraryUserProfileListScreen itineraryUserArgs =
              args as ItineraryUserProfileListScreen;
          return ItineraryUserProfileListScreen(
            getPlaceInformationBloc: itineraryUserArgs.getPlaceInformationBloc,
            getPlaceName: itineraryUserArgs.getPlaceName,
          );
        });

      case pathToUserProfileSelectedItineraryScreen:
        return MaterialPageRoute(builder: (_) {
          ItineraryUserProfileSelectedScreen itineraryUserSelectedArgs =
              args as ItineraryUserProfileSelectedScreen;
          return ItineraryUserProfileSelectedScreen(
            itemResponse: itineraryUserSelectedArgs.itemResponse,
            userId: itineraryUserSelectedArgs.userId,
          );
        });

      case pathToItineraryViewOnMapScreen:
        return MaterialPageRoute(builder: (_) {
          NewsFeedAssociatedItineraryViewOnMapScreen itineraryViewOnMapScreen =
              args as NewsFeedAssociatedItineraryViewOnMapScreen;
          return NewsFeedAssociatedItineraryViewOnMapScreen(
            placeInformationItemResponse:
                itineraryViewOnMapScreen.placeInformationItemResponse,
          );
        });

      case pathToExploreMainPlaceItineraryInformationScreen:
        return MaterialPageRoute(builder: (_) {
          ExploreMainPlaceItineraryInformation placeItineraryArgs =
              args as ExploreMainPlaceItineraryInformation;
          return ExploreMainPlaceItineraryInformation(
            day: placeItineraryArgs.day,
            index: placeItineraryArgs.index,
            placeName: placeItineraryArgs.placeName,
            itineraryPlaceInformation:
                placeItineraryArgs.itineraryPlaceInformation,
          );
        });

      case pathToImageAssociatedInformationViewScreen:
        return MaterialPageRoute(builder: (_) {
          ImageAssociatedInformationViewScreen imageAssociatedInfoArgs =
              args as ImageAssociatedInformationViewScreen;

          return ImageAssociatedInformationViewScreen(
              day: imageAssociatedInfoArgs.day,
              postInformationId: imageAssociatedInfoArgs.postInformationId,
              geoPointsResponse: imageAssociatedInfoArgs.geoPointsResponse,
              placeName: imageAssociatedInfoArgs.placeName);
        });

      case pathToItineraryShowScreenOnMap:
        return MaterialPageRoute(builder: (_) {
          ItineraryPlaceInformationMapShow
              itineraryPlaceInformationMapShowArgs =
              args as ItineraryPlaceInformationMapShow;
          return ItineraryPlaceInformationMapShow(
            itineraryShowItemResponse:
                itineraryPlaceInformationMapShowArgs.itineraryShowItemResponse,
          );
        });

      case pathToItineraryListItemScreen:
        return MaterialPageRoute(builder: (_) {
          ItineraryListItemScreen itineraryListItemScreenArgs =
              args as ItineraryListItemScreen;
          return ItineraryListItemScreen(
            mainPlaceItems: itineraryListItemScreenArgs.mainPlaceItems,
          );
        });

      case pathToLayItineraryOnMap:
        return MaterialPageRoute(builder: (_) {
          ShowLayTravelerDayItemsOnMapScreen
              showLayTravelerDayItemsOnMapScreenArgs =
              args as ShowLayTravelerDayItemsOnMapScreen;
          return ShowLayTravelerDayItemsOnMapScreen(
            userDayTravelerInformation: showLayTravelerDayItemsOnMapScreenArgs
                .userDayTravelerInformation,
          );
        });

      case pathToShowItineraryTravelerOnMap:
        return MaterialPageRoute(builder: (_) {
          ShowItineraryTravelerOnMapScreen
              ShowItineraryTravelerOnMapScreenArgs =
              args as ShowItineraryTravelerOnMapScreen;
          return ShowItineraryTravelerOnMapScreen(
            userId: ShowItineraryTravelerOnMapScreenArgs.userId,
            itineraryShowItemsResponse:
                ShowItineraryTravelerOnMapScreenArgs.itineraryShowItemsResponse,
          );
        });

      case pathToLayTravelerProfileScreen:
        return MaterialPageRoute(builder: (_) {
          LayTravelerProfile layTravelerProfileArgs =
              args as LayTravelerProfile;
          return LayTravelerProfile(
            isPackageCompleted: layTravelerProfileArgs.isPackageCompleted,
            userDayItemResponse: layTravelerProfileArgs.userDayItemResponse,
          );
        });

      case pathToLayTravelerProfilePackageViewScreen:
        return MaterialPageRoute(builder: (_) {
          LayTravelerViewPackageScreen layTravelerViewPackageScreenArgs =
              args as LayTravelerViewPackageScreen;
          return LayTravelerViewPackageScreen(
            userDayItemResponse:
                layTravelerViewPackageScreenArgs.userDayItemResponse,
          );
        });

      case pathToUserItineraryMapTravelScreen:
        return MaterialPageRoute(builder: (_) {
          ShowUserItineraryInformationOnMap ShowUserItineraryInformationOnArgs =
              args as ShowUserItineraryInformationOnMap;
          return ShowUserItineraryInformationOnMap(
            userItineraryPackageResponse:
                ShowUserItineraryInformationOnArgs.userItineraryPackageResponse,
          );
        });

      case pathToUserItineraryPackageScreen:
        return MaterialPageRoute(builder: (_) {
          PackageScreen packageScreenArgs = args as PackageScreen;
          return PackageScreen(
            packageID: packageScreenArgs.packageID,
            packageName: packageScreenArgs.packageName,
            usersInfo: packageScreenArgs.usersInfo,
            packagesInfoMainPlaceItemResponse:
                packageScreenArgs.packagesInfoMainPlaceItemResponse,
          );
        });

      default:
        return MaterialPageRoute(
          builder: (_) => ErrorPage(),
        );
    }
  }
}
