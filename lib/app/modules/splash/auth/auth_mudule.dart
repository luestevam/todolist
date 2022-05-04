import 'package:provider/provider.dart';
import 'package:todo_list/app/modules/splash/auth/login/login_controller.dart';
import 'package:todo_list/app/modules/splash/auth/login/login_page.dart';
import 'package:todo_list/app/core/database/modules/todo_list_module.dart';

class AuthModule extends TodoListModule {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(
              create: (context) => LoginController(),
            )
          ],
          routers: {
            '/login': (context) => LoginPage(),
          },
        );
}
