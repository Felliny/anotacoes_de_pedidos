/*
Pagina de login
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late final TextEditingController _email;
  late final TextEditingController _senha;


  @override
  void initState() {
    _email = TextEditingController();
    _senha = TextEditingController();

    super.initState();
  }


  @override
  void dispose() {
    _email.dispose();
    _senha.dispose();

    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 200),

            TextField(
              controller: _email,
              obscureText: false,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Email"),
            ),

            const SizedBox(height: 20),

            TextField(
              controller: _senha,
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), labelText: "Senha"),
            ),

            const SizedBox(height: 25), // separa o botão de login do textfield

            ElevatedButton(
                onPressed: () async {
                  final tipoLogin = _email.text;
                  final senha = _senha.text;

                  // FirebaseAuth.instance
                },
                child: const Text(
                    "Entrar",
                  style: TextStyle(fontSize: 25),
                )
            ),
          ],
        ),
      ),
    );
  }
}
