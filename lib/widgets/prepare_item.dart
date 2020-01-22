import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterweb/helpers/colors.dart';
import 'rounded_icon_button.dart';

class PrepareItem extends StatelessWidget {
  const PrepareItem({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      constraints: BoxConstraints(minWidth: MediaQuery.of(context).size.width),
      child: Card(
        child: Column(
          children: <Widget>[
            prepareItemTopRow(),
            prepareItemBottomRow(),
          ],
        ),
      ),
    );
  }

  Container prepareItemTopRow() {
    return Container(
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: Colors.black)),
      ),
      child: Row(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 16.0, top: 6.0),
            width: 250.0,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 6.0),
                  child: Text(
                    "Meijer Berry & Pecan Sprint Mix Salad, Large Bowl",
                    maxLines: 2,
                    style: TextStyle(
                      fontFamily: "Source Sans Pro Bold",
                      color: C2A2E30_Gray,
                      fontSize: 20.0,
                      height: 1.2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        "\$5.99",
                        style: TextStyle(
                          fontFamily: "Source Sans Pro Bold",
                          color: C525A5E_Gray,
                          fontSize: 14.0,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(width: 5.0),
                      Text("-"),
                      Container(width: 5.0),
                      Text(
                        "00-0000-03465",
                        style: TextStyle(
                          fontFamily: "Source Sans Pro Regular",
                          color: C525A5E_Gray,
                          fontSize: 14.0,
                          height: 1.2,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            padding: EdgeInsets.all(8.0),
            width: 64.0,
            child: Image.network(
                'https://www.tasteofhome.com/wp-content/uploads/2017/10/exps6498_MRR133247D07_30_5b_WEB-2.jpg'),
          ),
        ],
      ),
    );
  }

  Padding prepareItemBottomRow() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 11.0),
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.local_atm),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: null,
          ),
          Spacer(),
          RoundedIconButton(icon: Icons.remove),
          Container(
            width: 36.0,
            height: 40.0,
            margin: EdgeInsets.only(left: 6.0, right: 6.0),
            child: TextFormField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                contentPadding: EdgeInsets.zero,
                hintText: "0",
              ),
            ),
          ),
          RoundedIconButton(icon: Icons.add),
        ],
      ),
    );
  }
}
