// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'laptops_item_model.dart';
import '../../../core/app_export.dart';
import 'logitech_item_model.dart';

/// This class defines the variables used in the [filter_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterOneModel extends Equatable {
  FilterOneModel({
    this.laptopsItemList = const [],
    this.logitechItemList = const [],
  });

  List<LaptopsItemModel> laptopsItemList;

  List<LogitechItemModel> logitechItemList;

  FilterOneModel copyWith({
    List<LaptopsItemModel>? laptopsItemList,
    List<LogitechItemModel>? logitechItemList,
  }) {
    return FilterOneModel(
      laptopsItemList: laptopsItemList ?? this.laptopsItemList,
      logitechItemList: logitechItemList ?? this.logitechItemList,
    );
  }

  @override
  List<Object?> get props => [laptopsItemList, logitechItemList];
}
