import 'package:flutter/material.dart';
import 'package:flutterweb/helpers/colors.dart';

class FilterChips extends StatelessWidget {
  const FilterChips({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 8.0),
      alignment: Alignment(-1.0, -1.0),
      child: Container(
        child: Wrap(
          spacing: 8.0,
          children: <Widget>[
            Chip(
              label: Text("Salads"),
              backgroundColor: CF5F9FB_White,
              shape: StadiumBorder(
                  side: BorderSide(width: 1, color: CD8E3E9_Gray)),
            ),
            Chip(
              label: Text("Fruit"),
              backgroundColor: CF5F9FB_White,
              shape: StadiumBorder(
                  side: BorderSide(width: 1, color: CD8E3E9_Gray)),
            ),
            Chip(
              label: Text("Veggies"),
              backgroundColor: CF5F9FB_White,
              shape: StadiumBorder(
                  side: BorderSide(width: 1, color: CD8E3E9_Gray)),
            ),
            Chip(
              label: Text("Meat"),
              backgroundColor: CF5F9FB_White,
              shape: StadiumBorder(
                  side: BorderSide(width: 1, color: CD8E3E9_Gray)),
            ),
          ],
        ),
      ),
    );
  }
}
