import 'package:flutter/material.dart';
import 'Task.dart';

class DayTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 25,
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
