import 'package:get/get.dart';
import 'package:projeto_live/app/data/provider/api/api.dart';
import 'package:projeto_live/app/modules/login/controller.dart';
import 'package:projeto_live/app/modules/login/repository.dart';

class LoginBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
        () => LoginController(LoginRepository(MyApi())));
  }
}
