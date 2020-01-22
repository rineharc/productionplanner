import 'package:flutter/material.dart';
import 'package:flutterweb/data/items_repository.dart';
import 'package:flutterweb/models/item.dart';

class PrepareList extends StatelessWidget {
  const PrepareList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var repo = ItemsRepository();
    return Expanded(
      child: FutureBuilder(
        future: repo.getItems(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none &&
              snapshot.hasData == null) {
            return Container();
          }
          List<Item> items = snapshot.data;
          return ListView.builder(
            itemCount: items?.length ?? 0,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  Text(items[index].upc),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
