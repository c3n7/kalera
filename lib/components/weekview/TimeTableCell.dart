import 'package:flutter/material.dart';

class TimeTableCell extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        child: Container(
          height: 20,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(2)),
            color: Colors.grey[800],
          ),
        ),
      ),
    );
  }
}
