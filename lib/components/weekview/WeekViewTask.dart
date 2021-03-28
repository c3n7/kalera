import 'package:flutter/material.dart';

class WeekViewTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TableCell(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 3),
        child: Container(
          height: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            color: Colors.grey[700],
          ),
        ),
      ),
    );
  }
}
