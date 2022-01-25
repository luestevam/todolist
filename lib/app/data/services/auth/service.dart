import 'package:get/get.dart';
import 'package:projeto_live/app/data/models/model1.dart';

class AuthService extends GetxService {
  Future<AuthService> init() async {
    return this;
  }

  final user = Model1Model().obs;
  login() {}
}
