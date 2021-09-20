import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/auth_sensors_controller.dart';

class AuthSensorsView extends GetView<AuthSensorsController> {
  @override
  Widget build(BuildContext context) {
    controller;
    return Scaffold(
      appBar: AppBar(
        title: Text('AuthSensorsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'AuthSensorsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
