import 'package:get/get.dart';
import 'package:projeto_live/app/modules/login/binding.dart';
import 'package:projeto_live/app/modules/login/page.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.LOGIN,
      page: () => LoginPage(),
      binding: LoginBinding(),
    ),
  ];
}
