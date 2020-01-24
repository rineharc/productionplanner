import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutterweb/blocs/blocs.dart';
import 'package:flutterweb/models/item.dart';
import 'package:flutterweb/widgets/prepare_item.dart';

class PrepareList extends StatelessWidget {
  const PrepareList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ItemsBloc, ItemsState>(builder: (context, state) {
      if (state is ItemsLoading) {
        return Expanded(child: Center(child: CircularProgressIndicator()));
      } else if (state is ItemsLoaded) {
        List<Item> items = state.items;
        return Expanded(
          child: ListView.builder(
            itemCount: items?.length ?? 0,
            itemBuilder: (context, index) {
              return Column(
                children: <Widget>[
                  PrepareItem(),
                  //Text(items[index].upc),
                ],
              );
            },
          ),
        );
      } else if (state is ItemsNotLoaded) {
        return Text("Items Not Loaded");
      }
    });
  }
}
