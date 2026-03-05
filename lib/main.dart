import 'package:flutter/material.dart';
import 'package:new_project/screens/widgets_conteudo.dart';
import 'package:new_project/screens/widgets_layout.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple),),
      home: ListContents(),
    );
  }
}

class ListContents extends StatelessWidget {
  const ListContents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bem-Vindo', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
           MaterialPageRoute(builder: (_) => WidgetsConteudo())), 
          child: Text('Widgets de Conteúdo')
          ),
           ElevatedButton(
            onPressed: () => Navigator.push(
             context,
             MaterialPageRoute(builder: (_) => WidgetsLayout())),
           child: Text('Widgets de Layout')),


        ],
      ),
    );
  }
}