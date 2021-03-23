import 'package:flutter/material.dart';
import 'DayTask.dart';

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
              DayTask(),
              DayTask(),
              DayTask(),
              DayTask(),
              DayTask(),
              DayTask(),
              DayTask(),
            ],
          ),
        ),
      ),
    );
  }
}
