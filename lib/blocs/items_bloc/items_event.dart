import 'package:equatable/equatable.dart';
import 'package:flutterweb/models/item.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ItemsEvent extends Equatable {
  const ItemsEvent();
  @override
  List<Object> get props => [];
}

class LoadItems extends ItemsEvent {}

class UpdateItem extends ItemsEvent {
  final Item updatedItem;

  const UpdateItem(this.updatedItem);
  @override
  List<Object> get props => [updatedItem];
}
