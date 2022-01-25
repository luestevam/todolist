// ignore_for_file: unnecessary_this

import 'package:get/get.dart';
import 'package:projeto_live/app/data/services/auth/service.dart';
import 'package:projeto_live/app/modules/login/repository.dart';

class LoginController extends GetxController {
  final LoginRepository repository;
  LoginController(this.repository);
  AuthService? auth;

  @override
  void onInit() {
    this.auth = Get.find<AuthService>();
    super.onInit();
  }
}
