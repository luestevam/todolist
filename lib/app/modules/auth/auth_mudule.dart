import 'package:provider/provider.dart';
import '../../modules/auth/login/login_controller.dart';
import '../../modules/auth/login/login_page.dart';
import '../../modules/auth/register/register_page.dart';

import '../../core/modules/todo_list_module.dart';
import '../../modules/auth/register/register_controller.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(
              create: (_) => LoginController(),
            ),
            ChangeNotifierProvider(
              create: (_) => RegisterController(),
            ),
          ],
          routers: {
            '/login': (context) => LoginPage(),
            '/register': ((context) => RegisterPage())
          },
        );
}
