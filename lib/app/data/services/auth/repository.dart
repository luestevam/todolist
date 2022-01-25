import 'package:projeto_live/data/provider/api/api.dart';

class AuthRepository {
  final MyApi api;

  AuthRepository(this.api);

  login(email, senha) => this.api.login(email, senha);
}
