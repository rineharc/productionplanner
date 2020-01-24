import 'package:equatable/equatable.dart';

class Item extends Equatable {
  final int store;
  final String upc;
  final String description;
  final double price;
  final int priceQty;
  final String imageUrl;
  final int inventoryQty;
  final int forecastQty;
  final int producedQty;

  Item({
    this.store,
    this.upc,
    this.description,
    this.price,
    this.priceQty,
    this.imageUrl,
    this.inventoryQty,
    this.forecastQty,
    this.producedQty,
  });

  @override
  List<Object> get props => [upc, store];
}
