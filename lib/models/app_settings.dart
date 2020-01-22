import 'package:equatable/equatable.dart';

class AppSettings extends Equatable {
  final int currentTab;
  AppSettings({
    this.currentTab,
  });

  @override
  List<Object> get props => [currentTab];
}
