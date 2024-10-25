/*
Pagina do inicio da aplicação
 */


import 'package:flutter/material.dart';

class AnotacoesEntrega extends StatelessWidget {
  const AnotacoesEntrega({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
          title: const Text("Anotações Entrega"),
          centerTitle: true,
        ),

      drawer: Drawer(
        width: 230,
        child:
          Padding(padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(
                  Icons.account_circle,
                  size: 40,
                ),
                title: const Text(
                  "Clientes",
                  style: TextStyle(
                    fontSize: 24
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
    );
  }
}
