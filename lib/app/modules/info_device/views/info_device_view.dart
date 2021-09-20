import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/info_device_controller.dart';

class InfoDeviceView extends GetView<InfoDeviceController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InfoDeviceView'),
        centerTitle: true,
      ),
      body: Obx(
        () => ListView(
          children: controller.getDeviceData().keys.map(
            (String property) {
              return Row(
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      property,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                      child: Text(
                        '${controller.getDeviceData()[property]}',
                        maxLines: 10,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
