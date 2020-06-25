import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  int _index;
  String _task;
  bool _complete;
  final Function(int) _onPressed;

  Task(this._index, this._task, this._complete, this._onPressed);

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
            onChanged: (bool value) {
              _onPressed(_index);
            },
          )
        ],
      ),
    ));
  }
}
