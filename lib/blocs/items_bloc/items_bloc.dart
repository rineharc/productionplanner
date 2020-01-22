import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutterweb/blocs/items_bloc/items_state.dart';
import 'package:flutterweb/blocs/items_bloc/items_event.dart';
import 'package:flutterweb/data/iItems_repository.dart';
import 'package:flutterweb/models/item.dart';

class ItemsBloc extends Bloc<ItemsEvent, ItemsState> {
  final IItemsRepository itemsRepository;

  ItemsBloc(this.itemsRepository);
  @override
  ItemsState get initialState => ItemsLoading();

  @override
  Stream<ItemsState> mapEventToState(ItemsEvent event) async* {
    if (event is LoadItems) {
      yield* _mapLoadItemsToState();
    } else if (event is UpdateItem) {
      yield* _mapUpdateItemsToState(event);
    }
  }

  Stream<ItemsState> _mapLoadItemsToState() async* {
    try {
      final items = await this.itemsRepository.getItems();
      yield ItemsLoaded(
        items,
      );
    } catch (_) {
      yield ItemsNotLoaded();
    }
  }

  Stream<ItemsState> _mapUpdateItemsToState(UpdateItem event) async* {
    if (state is ItemsLoaded) {
      final List<Item> updatedItems = (state as ItemsLoaded).items.map((item) {
        return item.upc == event.updatedItem.upc ? event.updatedItem : item;
      }).toList();
      yield ItemsLoaded(updatedItems);
      _saveItems(updatedItems);
    }
  }

  Future _saveItems(List<Item> items) {
    return itemsRepository.saveItems(items);
  }
}
