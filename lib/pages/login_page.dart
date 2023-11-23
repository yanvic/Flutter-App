import 'package:estudos/components/buttom.dart';
import 'package:flutter/material.dart';

import '../components/textField.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signIn() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50),
              const Icon(
                Icons.face,
                size: 100,
                color: Colors.orange,
              ),
              SizedBox(height: 50),
              const Text(
                'Bem-vindo de volta!',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 50),
              LoginField(
                controller: usernameController,
                hintText: 'Nome',
                obscureText: false,
              ),
              LoginField(
                controller: passwordController,
                hintText: 'Senha',
                obscureText: true,
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row( mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      'Esqueceu a senha?',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),


              SizedBox(height: 20),
              ButtomLogin(onTap: signIn)
            ],
          ),
        ),
      ),
    );
  }
}
