// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'eightytwo_item_model.dart';
import 'framenineteen3_item_model.dart';

/// This class defines the variables used in the [search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchModel extends Equatable {
  SearchModel({
    this.eightytwoItemList = const [],
    this.framenineteen3ItemList = const [],
  });

  List<EightytwoItemModel> eightytwoItemList;

  List<Framenineteen3ItemModel> framenineteen3ItemList;

  SearchModel copyWith({
    List<EightytwoItemModel>? eightytwoItemList,
    List<Framenineteen3ItemModel>? framenineteen3ItemList,
  }) {
    return SearchModel(
      eightytwoItemList: eightytwoItemList ?? this.eightytwoItemList,
      framenineteen3ItemList:
          framenineteen3ItemList ?? this.framenineteen3ItemList,
    );
  }

  @override
  List<Object?> get props => [eightytwoItemList, framenineteen3ItemList];
}
