import 'package:flutter/material.dart';
import 'package:hello_world/src/components/Task.dart';
import 'package:hello_world/src/models/TaskModel.dart';

class AddTask extends StatefulWidget {
  AddTask({Key key}) : super(key: key);

  @override
  _AddTask createState() => _AddTask();
}

class _AddTask extends State<AddTask> {
  String task = '';

  List<TaskModel> tasks = <TaskModel>[];

  _onPressed(int index) {
    setState(() {
      tasks.elementAt(index).setChecked();
    });
    /*for (var task in tasks) {
      print(task.checked);
    }*/
  }

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
                tasks.add(TaskModel(task, false));
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
                  return new GestureDetector(
                      onTap: () => _onPressed(index),
                      child: Container(
                        height: 50,
                        child: Center(
                          child: Task(index, tasks[index].task,
                              tasks[index].checked, _onPressed),
                        ),
                      ));
                }),
          ),
        ],
      ),
    );
  }
}
