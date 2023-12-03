// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [laptops_item_widget] screen.
class LaptopsItemModel extends Equatable {
  LaptopsItemModel({
    this.laptops,
    this.id,
  }) {
    laptops = laptops ?? false;
    id = id ?? "";
  }

  bool? laptops;

  String? id;

  LaptopsItemModel copyWith({
    bool? laptops,
    String? id,
  }) {
    return LaptopsItemModel(
      laptops: laptops ?? this.laptops,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [laptops, id];
}
