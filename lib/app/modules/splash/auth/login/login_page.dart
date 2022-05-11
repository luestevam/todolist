import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import '../../../../core/widget/todo_list_logo.dart';
import '../../../../core/widget/todo_list_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                  minWidth: constraints.maxWidth),
              child: IntrinsicHeight(
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(
                    height: 10,
                  ),
                  TodoListLogo(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 20),
                    child: Form(
                      child: Column(
                        children: [
                          TodoListField(
                            label: 'E-mail',
                          ),
                          SizedBox(height: 20),
                          TodoListField(
                            label: 'Senha',
                            obscureText: true,
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              TextButton(
                                onPressed: () {},
                                child: Text(
                                  'Esqueceu Sua Senha',
                                ),
                              ),
                              ElevatedButton(
                                onPressed: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Login'),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xffF0F3F7),
                        border: Border(
                          top: BorderSide(
                            width: 2,
                            color: Colors.grey.withAlpha(50),
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 30),
                          SignInButton(
                            Buttons.Google,
                            text: "Continue com Google",
                            padding: EdgeInsets.all(5),
                            shape: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30),
                              borderSide: BorderSide.none,
                            ),
                            onPressed: () {},
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('Não tem conta?'),
                              TextButton(
                                onPressed: () {},
                                child: Text('Cadastre-se'),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            ),
          );
        },
      ),
    );
  }
}
