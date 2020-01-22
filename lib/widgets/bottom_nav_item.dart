import 'package:flutter/material.dart';
import '../helpers/colors.dart';

class BottomNavItem extends StatelessWidget {
  const BottomNavItem({Key key, this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 5.0),
      child: ClipOval(
        child: Material(
          child: Ink(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
              color: C0C60A5_Blue,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(
                  1000.0), //Something large to ensure a circle
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: Icon(
                  icon,
                  size: 15.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
