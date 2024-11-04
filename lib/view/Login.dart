/*
Pagina de login
 */

import 'package:flutter/material.dart';

const List<String> tiposLogin = <String>[
  "Entrega",
  "Deposito"
]; // valores do dropdownMenu

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String dropdownValue = tiposLogin.first;

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

            DropdownMenu<String>(
              initialSelection: tiposLogin.first,
              onSelected: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              dropdownMenuEntries: tiposLogin.map<DropdownMenuEntry<String>>((String value) {
                return DropdownMenuEntry<String>(value: value, label: value);
              }).toList(),
              width: 500,
            ),

            const SizedBox(height: 20),

            const TextField(
              obscureText: true,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: "Senha"),
            ),

            const SizedBox(height: 20), // separa o botão de login do textfield

            ElevatedButton(onPressed: () async {}, child: const Text("Login")),
          ],
        ),
      ),
    );
  }
}
