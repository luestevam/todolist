import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:projeto_live/app/modules/login/controller.dart';
import 'package:projeto_live/core/theme/text_theme.dart';
import 'package:projeto_live/core/values/string.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text(
          login,
          style: title_style,
        ),
      ),
    );
  }
}
