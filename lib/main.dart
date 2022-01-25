import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_live/app/data/services/auth/service.dart';
import 'package:projeto_live/app/modules/login/binding.dart';
import 'package:projeto_live/app/modules/login/page.dart';
import 'package:projeto_live/core/theme/app_theme.dart';

import 'routes/pages.dart';

void main() async {
  await Get.putAsync(() => AuthService().init());

  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    theme: appTheme,
    getPages: AppPages.pages,
    initialRoute: Routes.LOGIN,
    home: LoginPage(),
    initialBinding: LoginBinding(),
  ));
}
