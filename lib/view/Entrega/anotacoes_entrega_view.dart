/*
Pagina do inicio da aplicação
 */

import 'package:flutter/material.dart';

class AnotacoesEntrega extends StatefulWidget {
  const AnotacoesEntrega({super.key});

  @override
  State<AnotacoesEntrega> createState() => _AnotacoesEntregaState();
}




class _AnotacoesEntregaState extends State<AnotacoesEntrega> {




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Anotações Entrega"),
          centerTitle: true,
        ),
        drawer: const Drawer(
          width: 230,
          child: Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(
                    Icons.account_circle,
                    size: 40,
                  ),
                  title: Text(
                    "Clientes",
                    style: TextStyle(fontSize: 24),
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
