import 'package:flutterweb/models/item.dart';

abstract class IItemsRepository {
  Future<List<Item>> getItems();
  Future saveItems(List<Item> items);
}
