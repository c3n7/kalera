import 'package:flutter/material.dart';
import 'weekview/WeekViewTask.dart';
import 'weekview/TimeTableCell.dart';

class WeekView extends StatelessWidget {
  TableRow weekRow() {
    return TableRow(
      children: <Widget>[
        TimeTableCell(),
        WeekViewTask(),
        WeekViewTask(),
        WeekViewTask(),
        WeekViewTask(),
        WeekViewTask(),
        WeekViewTask(),
        WeekViewTask(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25),
      child: Table(
        columnWidths: {
          0: IntrinsicColumnWidth(),
          1: FlexColumnWidth(),
          2: FlexColumnWidth(),
          3: FlexColumnWidth(),
          4: FlexColumnWidth(),
          5: FlexColumnWidth(),
          6: FlexColumnWidth(),
          7: FlexColumnWidth(),
          8: FlexColumnWidth(),
        },
        children: <TableRow>[
          weekRow(),
          weekRow(),
          weekRow(),
          weekRow(),
          weekRow(),
          weekRow(),
          weekRow(),
          weekRow(),
        ],
      ),
    );
  }
}
