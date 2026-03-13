import 'package:flutter/material.dart';
// import 'package:new_project/screens/widgets_conteudo.dart';
import 'package:new_project/widgets/titulo_sessao.dart';

class WidgetsLayout extends StatelessWidget {
  const WidgetsLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Widgets Layout')),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          TituloSessao(titulo: 'padding'),
          Container(
            color: const Color.fromARGB(255, 152, 255, 138),
            child: Padding(
              padding: EdgeInsetsGeometry.all(20),
              child: Text('Texto com padding'),
            ),
          ),
          Divider(),
          TituloSessao(titulo: 'Align'),
          Container(
            height: 80,
            color: const Color.fromARGB(188, 100, 151, 199),
            alignment: Alignment.center,
            child: Text('Texto centralizado'),
          ),
          Divider(),
          TituloSessao(titulo: 'Center'),
          Container(
            height: 80, 
            color: const Color.fromARGB(255, 117, 179, 165),
            child: Center(child: Text('Texto centralizado')),
            ),
            Divider(),
            TituloSessao(titulo: 'SizedBox'),
            Column(
              children: [
                Text('Texto acima do SizedBox'),
                SizedBox(height: 20),
                Text('Texto abaixo do SizedBox'),
              ],
            ),
            Divider(),
            TituloSessao(titulo: 'Expanded e Flexible'),
            Container(
              height: 200,
              color: const Color.fromARGB(255, 255, 213, 0),
              child: Column(
                children: [
                  Expanded(
                    child: Container(
                      color: const Color.fromARGB(255, 255, 149, 149),
                      child: Center(child: Text('Expanded')),
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: const Color.fromARGB(255, 219, 11, 11),
                      child: Text('Flexible (1)'),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            TituloSessao(titulo: 'expandend e flexible (row)'),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50,
                    color: const Color.fromARGB(255, 126, 231, 179),
                    child: Center(child: Text('Expanded')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    height: 50,
                    color: const Color.fromARGB(255, 126, 224, 231),
                    child: Center(child: Text('Flexible (2)')),
                  ),
                ),
              ],
            )
        ],
      ),
    );
  }
}