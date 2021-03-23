import 'package:flutter/material.dart';

class DayTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(
          left: 25,
        ),
        child: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[900],
                  ),
                  height: 120,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  bottom: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Colors.grey[900],
                  ),
                  height: 120,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
