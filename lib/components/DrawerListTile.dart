import 'package:flutter/material.dart';

class DrawerListTile extends StatelessWidget {
  DrawerListTile({
    Key key,
    @required this.text,
    @required this.icon,
    this.current = false,
    @required this.onChanged,
  }) : super(key: key);
  final bool current;
  final ValueChanged<bool> onChanged;
  final String text;
  final IconData icon;

  void _handleTap() {
    onChanged(true);
  }

  final LinearGradient normalColor = LinearGradient(
    colors: [
      Colors.grey[900],
      Colors.grey[900],
    ],
  );

  final LinearGradient activeGrad = LinearGradient(
    colors: [
      Color(0x00E65100),
      Color(0x15E65100),
    ],
  );
  final Color activeTextColor = Colors.amber[900];

  final Color normalTextColor = Colors.white38;

  final Color normalBorderColor = Colors.grey[900];

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _handleTap,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 1000),
        curve: Curves.easeOutQuart,
        decoration: BoxDecoration(
          border: Border(
            right: BorderSide(
              color: current ? activeTextColor : normalBorderColor,
              width: 5.0,
            ),
          ),
          gradient: current ? activeGrad : normalColor,
        ),
        child: ListTile(
          leading: Icon(
            icon,
            color: current ? activeTextColor : normalTextColor,
            size: 17,
          ),
          title: Text(
            text,
            style: TextStyle(
              color: current ? activeTextColor : normalTextColor,
            ),
          ),
        ),
      ),
    );
  }
}
