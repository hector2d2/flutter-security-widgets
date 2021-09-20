import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:seguridad/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Informacion del dispositivo'),
                  onPressed: () {
                    Get.toNamed(Routes.infoDevice);
                  },
                ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Authenticacion con sensores'),
                  onPressed: () {
                    Get.toNamed(Routes.authSensors);
                  },
                ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Ubicacion'),
                  onPressed: () {
                    Get.toNamed(Routes.location);
                  },
                ),
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  child: Text('Widget duolingo'),
                  onPressed: () {
                    Get.toNamed(Routes.widgetDuolingo);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
