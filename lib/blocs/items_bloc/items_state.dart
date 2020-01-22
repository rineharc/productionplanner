import 'dart:core';

import 'package:equatable/equatable.dart';
import 'package:flutterweb/models/item.dart';

abstract class ItemsState extends Equatable {
  const ItemsState();

  @override
  List<Object> get props => [];
}

class ItemsLoading extends ItemsState {}

class ItemsLoaded extends ItemsState {
  final List<Item> items;

  const ItemsLoaded([this.items = const []]);

  @override
  List<Object> get props => [items];
}

class ItemsNotLoaded extends ItemsState {}
