import 'package:get/get.dart';

import '../controllers/widget_duolingo_controller.dart';

class WidgetDuolingoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WidgetDuolingoController>(
      () => WidgetDuolingoController(),
    );
  }
}
