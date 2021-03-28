import 'package:flutter/material.dart';
import 'weekview/WeekViewTask.dart';

class WeekView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Table(
        children: <TableRow>[
          TableRow(
            children: <Widget>[
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
            ],
          ),
          TableRow(
            children: <Widget>[
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
            ],
          ),
          TableRow(
            children: <Widget>[
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
            ],
          ),
          TableRow(
            children: <Widget>[
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
            ],
          ),
          TableRow(
            children: <Widget>[
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
              WeekViewTask(),
            ],
          ),
        ],
      ),
    );
  }
}
