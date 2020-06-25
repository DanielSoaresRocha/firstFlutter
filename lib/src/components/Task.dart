import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  String _task;
  bool _complete;

  Task(this._task, this._complete);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(_task),
          Checkbox(
            value: _complete,
            onChanged: (bool value) {},
          )
        ],
      ),
    ));
  }
}
