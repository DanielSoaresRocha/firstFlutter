import 'package:flutter/material.dart';

class AddTask extends StatefulWidget {
  AddTask({Key key}) : super(key: key);

  @override
  _AddTask createState() => _AddTask();
}

class _AddTask extends State<AddTask> {
  String task = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Digite uma atividade: ',
              ),
              onChanged: (text) {
                setState(() {
                  task = text;
                });
              },
            ),
          ),
          RaisedButton(
            onPressed: () {},
            child: Text('Adicionar'),
          ),
        ],
      ),
    );
  }
}
