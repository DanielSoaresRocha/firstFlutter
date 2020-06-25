import 'package:flutter/material.dart';
import 'package:hello_world/src/components/Task.dart';

class AddTask extends StatefulWidget {
  AddTask({Key key}) : super(key: key);

  @override
  _AddTask createState() => _AddTask();
}

class _AddTask extends State<AddTask> {
  String task = '';

  List<String> tasks = <String>[];

  final TextEditingController controllerText = new TextEditingController();

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
              controller: controllerText,
            ),
          ),
          RaisedButton(
            onPressed: () {
              setState(() {
                tasks.add(task);
                task = '';
              });
              controllerText.clear();
            },
            child: Text('Adicionar'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20.0),
            child: Text('Todas as atividades:'),
          ),
          SizedBox(
            height: 300.0,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(8),
                itemCount: tasks.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    child: Center(child: Task(tasks[index], true)),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
