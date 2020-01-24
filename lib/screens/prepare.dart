import 'package:flutter/material.dart';
import 'package:flutterweb/widgets/prepare_list.dart';

import '../widgets/bottom_navigation.dart';
import '../widgets/filter_chips.dart';
import '../widgets/search.dart';

class PrepareScreen extends StatelessWidget {
  const PrepareScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SearchBar(),
          FilterChips(),
          PrepareList(),
        ],
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
