import 'package:flutter/material.dart';

class DayTask extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: Colors.grey[900],
        ),
        height: 120,
        child: Row(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey[700],
                ),
                height: 100,
                width: 120,
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  right: 10,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.grey[700],
                  ),
                  height: 100,
                  width: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
