import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Card(
        margin: EdgeInsets.zero,
        
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 15.0),
            hintText: "Search Widget",
            // hintStyle: TextStyle(fontSize: 20.0),
            prefixIcon: Icon(Icons.search),
            suffixIcon: Icon(Icons.select_all),
          ),
        ),
      ),
    );
  }
}
