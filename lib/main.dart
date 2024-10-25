// Essa é uma Classe de inicialização do app, onde carrega a pagina de inicio
// Possui a rotas das principais paginas


import 'package:anotacoes_de_pedidos/view/AnotacoesEntrega.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge); // comando para não deixar a barra de notificação preta quando utiliza SafeArea
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anotações de Pedidos',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        useMaterial3: true,
      ),
      home: AnotacoesEntrega(),
      debugShowCheckedModeBanner: false,
    );
  }
}