import 'package:flutter/material.dart';

import 'package:social_media_app/components/my_button.dart';
import 'package:social_media_app/components/my_textfield.dart';

class RegisterPage extends StatelessWidget {
  final void Function()? onTap;

  RegisterPage({super.key, this.onTap});

  // text controllers
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  // register method
  void register() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // logo
              Icon(
                Icons.person,
                size: 80,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),

              const SizedBox(height: 25),

              // app name
              const Text(
                'C O D E G R A M',
                style: TextStyle(fontSize: 20),
              ),

              const SizedBox(height: 25),

              // username textfield
              MyTextField(
                hintText: 'Nome de usuário',
                obscureText: false,
                controller: usernameController,
              ),

              const SizedBox(height: 10),

              // email textfield
              MyTextField(
                hintText: 'Email',
                obscureText: false,
                controller: emailController,
              ),

              const SizedBox(height: 10),

              // password textfield
              MyTextField(
                hintText: 'Senha',
                obscureText: false,
                controller: passwordController,
              ),

              const SizedBox(height: 10),

              // confirm password textfield
              MyTextField(
                hintText: 'Confirme sua senha',
                obscureText: false,
                controller: confirmPasswordController,
              ),

              const SizedBox(height: 25),

              // egister button
              MyButton(
                text: 'Registrar',
                onTap: register,
              ),

              const SizedBox(height: 25),

              // don't have an account? Register here
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Já tem uma conta? ',
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                    ),
                  ),
                  GestureDetector(
                    onTap: onTap,
                    child: const Text(
                      'Faça login aqui',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
