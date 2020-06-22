import 'package:flutter/material.dart';

void main() => runApp(MinhaApp());

class MinhaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            title: Text('Título da minha app'),
          ),
          body: Card(
            child: Column(
              children: <Widget>[
                Image.asset('lib/src/assets/images/imagem.jpg'),
                Text('A minha imagem'),
              ],
            ),
          )),
    );
  }
}
