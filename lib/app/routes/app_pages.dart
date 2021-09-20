import 'package:get/get.dart';

import 'package:seguridad/app/modules/auth_sensors/bindings/auth_sensors_binding.dart';
import 'package:seguridad/app/modules/auth_sensors/views/auth_sensors_view.dart';
import 'package:seguridad/app/modules/home/bindings/home_binding.dart';
import 'package:seguridad/app/modules/home/views/home_view.dart';
import 'package:seguridad/app/modules/info_device/bindings/info_device_binding.dart';
import 'package:seguridad/app/modules/info_device/views/info_device_view.dart';
import 'package:seguridad/app/modules/location/bindings/location_binding.dart';
import 'package:seguridad/app/modules/location/views/location_view.dart';
import 'package:seguridad/app/modules/widget_duolingo/bindings/widget_duolingo_binding.dart';
import 'package:seguridad/app/modules/widget_duolingo/views/widget_duolingo_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const initial = Routes.home;

  static final routes = [
    GetPage(
      name: _Paths.home,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.infoDevice,
      page: () => InfoDeviceView(),
      binding: InfoDeviceBinding(),
    ),
    GetPage(
      name: _Paths.authSensors,
      page: () => AuthSensorsView(),
      binding: AuthSensorsBinding(),
    ),
    GetPage(
      name: _Paths.location,
      page: () => LocationView(),
      binding: LocationBinding(),
    ),
    GetPage(
      name: _Paths.widgetDuolingo,
      page: () => WidgetDuolingoView(),
      binding: WidgetDuolingoBinding(),
    ),
  ];
}
