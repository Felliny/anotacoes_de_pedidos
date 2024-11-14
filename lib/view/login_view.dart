/*
Pagina de login
 */

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import '../firebase_options.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
      body: FutureBuilder(
        future: Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform,
        ),
        builder: (context, snapshot) {
          return Padding(
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

                const SizedBox(height: 25),
                // separa o botão de login do textfield

                ElevatedButton(
                    onPressed: () async {
                      final email = _email.text;
                      final senha = _senha.text;

                      try {
                        final user = await FirebaseAuth.instance
                            .signInWithEmailAndPassword(
                                email: email, password: senha);

                        print(user);
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'invalid-credential'){
                          print("invalid credential");
                        }
                        else {
                          print("something bad happened");
                          print(e.code);
                        }

                      }

                    },
                    child: const Text(
                      "Entrar",
                      style: TextStyle(fontSize: 25),
                    )),
              ],
            ),
          );
        },
      ),
    );
  }
}
