// Essa é uma Classe de inicialização do app, onde carrega a pagina de inicio
// Possui a rotas das principais paginas


import 'package:anotacoes_de_pedidos/view/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // ensure that the binding is initialized before accessing it.
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge); // comando para não deixar a barra de notificação preta quando utiliza SafeArea
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
        useMaterial3: true,
      ),
      home: const Login(),
      debugShowCheckedModeBanner: false,
    )
  );
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
      // home: AnotacoesEntrega(),
      debugShowCheckedModeBanner: false,
    );
  }
}