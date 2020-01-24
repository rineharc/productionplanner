import 'package:flutterweb/data/iItems_repository.dart';
import 'package:flutterweb/models/item.dart';

class ItemsRepository implements IItemsRepository {
  List<Item> items = List<Item>();

  ItemsRepository() {
    var item = Item(
      store: 20,
      upc: "123",
      description: "123",
      price: 1.0,
      priceQty: 1,
      imageUrl: "123",
      inventoryQty: 0,
      forecastQty: 0,
      producedQty: 0,
    );

    this.items.add(item);
    this.items.add(item);
    this.items.add(item);
    this.items.add(item);
    this.items.add(item);
    this.items.add(item);
    this.items.add(item);
  }

  @override
  Future<List<Item>> getItems() async {
    // var item = Item(
    //   store: 20,
    //   upc: "123",
    //   description: "123",
    //   price: 1.0,
    //   priceQty: 1,
    //   imageUrl: "123",
    //   inventoryQty: 0,
    //   forecastQty: 0,
    //   producedQty: 0,
    // );

    // var items = List<Item>();

    // items.add(item);
    // items.add(item);
    // items.add(item);
    // items.add(item);
    // items.add(item);
    // items.add(item);
    // items.add(item);

    return Future<List<Item>>.delayed(
        const Duration(seconds: 2), () => this.items);
  }

  @override
  Future saveItems(List<Item> items) {
    this.items = items;
  }
}
