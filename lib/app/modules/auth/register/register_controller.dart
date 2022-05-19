import 'package:flutter/material.dart';
import 'package:todo_list/app/services/user_service.dart';

import '../../../exception/auth_exception.dart';

class RegisterController extends ChangeNotifier {
  final UserService _userService;
  String? error;
  bool sucess = false;

  RegisterController({required UserService userService})
      : _userService = userService;

  Future<void> registerUser(String email, String password) async {
    try {
      error = null;
      sucess = false;
      notifyListeners();

      final user = await _userService.register(email, password);
      if (user != null) {
        //sucesso
        sucess = true;
      } else {
        //Erros

        error = 'Erro ao registrar usuário';
      }
      notifyListeners();
    } on AuthException catch (e) {
      error = e.message;
    } finally {
      notifyListeners();
    }
  }
}
