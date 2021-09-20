import 'package:get/get.dart';

import '../controllers/auth_sensors_controller.dart';

class AuthSensorsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthSensorsController>(
      () => AuthSensorsController(),
    );
  }
}
