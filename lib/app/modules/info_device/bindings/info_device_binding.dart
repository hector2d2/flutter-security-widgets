import 'package:get/get.dart';

import '../controllers/info_device_controller.dart';

class InfoDeviceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<InfoDeviceController>(
      () => InfoDeviceController(),
    );
  }
}
