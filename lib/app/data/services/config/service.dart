import 'package:get/get.dart';

class ConfigService extends GetxService {
  Future<ConfigService> init() async {
    return this;
  }

  final theme = false.obs;
}
