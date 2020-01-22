import 'package:flutterweb/data/iItems_repository.dart';
import 'package:flutterweb/models/item.dart';

class ItemsRepository implements IItemsRepository {
  @override
  Future<List<Item>> getItems() {
    var item = Item(
      description: "123",
      upc: "123",
      imageUrl: "123",
      price: 1,
      priceQty: 1,
      inventoryQty: 0,
      producedQty: 0,
      forecastQty: 0,
    );

    var items = List<Item>();

    items.add(item);
    items.add(item);
    items.add(item);
    items.add(item);

    return Future<List<Item>>.value(items);
  }

  @override
  Future saveItems(List<Item> items) {
    // TODO: implement saveItems
    throw UnimplementedError();
  }
}
