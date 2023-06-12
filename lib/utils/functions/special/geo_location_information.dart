//get the placeName and location place name.
import 'package:geocoding/geocoding.dart';
import 'package:tuple/tuple.dart';

Tuple2<String, String> getLocationPlaceInformation(String locationName) {
  final parts = locationName.split(',');
  final mainPlaceName = parts.last.trim();
  final placeName = parts.length > 1 ? parts.first.trim() : mainPlaceName;
  return Tuple2(mainPlaceName, placeName);
}

//get location place name from the geoPoints.
Future<String> getLocationName(double latitude, double longitude) async {
  try {
    final List<Placemark> placeMarks = await placemarkFromCoordinates(
      latitude,
      longitude,
      localeIdentifier: "en",
    );
    final Placemark place = placeMarks.first;
    final locationName = "${place.subLocality!}, ${place.locality!}";
    return locationName;
  } catch (ex) {
    print("Error! to get location information! = $ex");
    return 'undefined';
  }
}
