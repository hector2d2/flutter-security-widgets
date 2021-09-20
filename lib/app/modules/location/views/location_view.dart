import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/location_controller.dart';

class LocationView extends GetView<LocationController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LocationView'),
        centerTitle: true,
      ),
      body:Column(
        children: [
          Text('Longitud ${controller.longitude}'),
          Text('altitude ${controller.altitude}'),
          Text('latitude ${controller.latitude}'),
        ],
      ),
    );
  }
}
