import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    // Kiểm tra quyền truy cập vị trí
    LocationPermission permission = await Geolocator.checkPermission();
    
    if (permission == LocationPermission.denied) {
      // Nếu quyền truy cập bị từ chối, yêu cầu quyền truy cập
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.whileInUse || permission == LocationPermission.always) {
      try {
        Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low,
        );

        latitude = position.latitude;
        longitude = position.longitude;
      } catch (e) {
        print('Error: $e');
      }
    } else {
      print('Location permission is denied');
    }
  }
}
