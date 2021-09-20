import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:seguridad/app/modules/widget_duolingo/local_widgets/custom_container.dart';

import '../controllers/widget_duolingo_controller.dart';

class WidgetDuolingoView extends GetView<WidgetDuolingoController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetDuolingoView'),
        centerTitle: true,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          controller
                              .calculateSizeAndPosition(controller.keyText1);
                        },
                        child: Container(
                          key: controller.keyText1,
                          width: 50,
                          height: 50,
                          color: Colors.red,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller
                              .calculateSizeAndPosition(controller.keyText2);
                        },
                        child: Container(
                          key: controller.keyText2,
                          width: 50,
                          height: 50,
                          color: Colors.red,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          controller
                              .calculateSizeAndPosition(controller.keyText3);
                        },
                        child: Container(
                          key: controller.keyText3,
                          width: 50,
                          height: 50,
                          color: Colors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  color: Colors.green,
                ),
                GestureDetector(
                  onTap: () {
                    controller.calculateSizeAndPosition(controller.keyText4);
                  },
                  child: Container(
                    key: controller.keyText4,
                    width: 50,
                    height: 50,
                    color: Colors.red,
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  color: Colors.green,
                ),
              ],
            ),
            Obx(
              () => CustomContainer(
                x: controller.position.value.dx,
                y: controller.position.value.dy - 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
