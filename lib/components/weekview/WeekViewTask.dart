import 'package:flutter/material.dart';

class WeekViewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
