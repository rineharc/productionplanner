import 'package:flutter/material.dart';
import '../helpers/colors.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton({Key key, this.icon}) : super(key: key);
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipOval(
        child: Material(
          child: Ink(
            decoration: BoxDecoration(
              color: C0C60A5_Blue,
              shape: BoxShape.circle,
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(1000.0),
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
