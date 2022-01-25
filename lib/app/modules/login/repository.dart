// ignore_for_file: unnecessary_this

import 'package:projeto_live/app/data/provider/api/api.dart';

class LoginRepository {
  final MyApi api;

  LoginRepository(this.api);
  login(email, senha) => this.api.login(email, senha);
}
