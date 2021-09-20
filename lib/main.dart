import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seguridad/app/routes/app_pages.dart';

void main() => runApp(StartApp());

class StartApp extends StatelessWidget {
  const StartApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: AppPages.routes,
      initialRoute: AppPages.initial,
    );
  }
}
