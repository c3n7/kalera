import 'package:flutter/material.dart';
import 'Task.dart';

class DayTasks extends StatelessWidget {
  DayTasks({Key key, this.addPadding = true}) : super(key: key);

  final bool addPadding;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          right: addPadding ? 15 : 0,
        ),
        child: Container(
          child: ListView(
            children: <Widget>[
              Task(),
              Task(),
              Task(),
              Task(),
              Task(),
              Task(),
              Task(),
            ],
          ),
        ),
      ),
    );
  }
}
