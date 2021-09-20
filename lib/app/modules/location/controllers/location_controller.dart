import 'package:get/get.dart';
import 'package:location/location.dart';

class LocationController extends GetxController {
  RxString latitude = ''.obs;
  RxString longitude = ''.obs;
  RxString altitude = ''.obs;

  @override
  void onInit() {
    getCurrentLocation();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  Future<void> getCurrentLocation() async {
    Location location = new Location();

    bool _serviceEnabled;
    PermissionStatus _permissionGranted;
    LocationData _locationData;

    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();
    print(_locationData.satelliteNumber);
    latitude.value = _locationData.latitude.toString();
    longitude.value = _locationData.longitude.toString();
    altitude.value = _locationData.altitude.toString();
  }
}
