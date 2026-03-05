import 'package:flutter/material.dart';
import 'package:new_project/widgets/titulo_sessao.dart';


class WidgetsConteudo extends StatelessWidget {
  const WidgetsConteudo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Widget header', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))),
        body: Column(
          children: [TituloSessao(titulo: 'Textos'),

          TituloSessao(titulo: 'Texto no style'),
          

           Text('Oto texto',
           style: TextStyle(fontSize: 18,
          fontWeight: FontWeight.bold,
          ),),

            Divider(),
             Divider(),
            TituloSessao(titulo: 'Acende o farol'),
            Image.network('https://picsum.photos/id/870/200/300?grayscale&blur=2',),

            Divider(),
            TituloSessao(titulo: 'Ícone'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.favorite, color: Colors.red, size: 32),
                Icon(Icons.star, color: Colors.amber, size: 32),
                Icon(Icons.settings, color: Colors.blue, size: 32),
              ],
            ),
            Divider(),
            TituloSessao(titulo: 'Butão'),
            ElevatedButton(onPressed: () {}, child: Text('Clique aqui')),
           ]
        ),
    );
  }
}