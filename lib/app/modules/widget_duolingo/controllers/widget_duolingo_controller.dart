import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WidgetDuolingoController extends GetxController {
  final keyText1 = GlobalKey();
  final keyText2 = GlobalKey();
  final keyText3 = GlobalKey();
  final keyText4 = GlobalKey();
  final keyText5 = GlobalKey();
  Rx<Size> size = Size(100, 100).obs;
  Rx<Offset> position = Offset(50, 50).obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  void calculateSizeAndPosition(GlobalKey widgetKey) {
    print('paso');
      final RenderBox box =
          widgetKey.currentContext!.findRenderObject() as RenderBox;

      position.value = box.localToGlobal(Offset.zero);
      size.value = box.size;
      print(position.value.dx);
      print(position.value.dy);
      print(size.value.height);
      print(size.value.width);
  }
}
