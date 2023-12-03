// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'workspaces_item_model.dart';
import 'smartapplewatch_item_model.dart';
import 'laptop_model.dart';
import 'collections_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.workspacesItemList = const [],
    this.smartapplewatchItemList = const [],
    this.laptopItemList = const [],
    this.collectionsItemList = const [],
  });

  List<WorkspacesItemModel> workspacesItemList;

  List<SmartapplewatchItemModel> smartapplewatchItemList;

  List<LaptopItemModel> laptopItemList;

  List<CollectionsItemModel> collectionsItemList;

  HomeModel copyWith({
    List<WorkspacesItemModel>? workspacesItemList,
    List<SmartapplewatchItemModel>? smartapplewatchItemList,
    List<LaptopItemModel>? laptopItemList,
    List<CollectionsItemModel>? collectionsItemList,
  }) {
    return HomeModel(
      workspacesItemList: workspacesItemList ?? this.workspacesItemList,
      smartapplewatchItemList:
          smartapplewatchItemList ?? this.smartapplewatchItemList,
      laptopItemList: laptopItemList ?? this.laptopItemList,
      collectionsItemList: collectionsItemList ?? this.collectionsItemList,
    );
  }

  @override
  List<Object?> get props => [
        workspacesItemList,
        smartapplewatchItemList,
        laptopItemList,
        collectionsItemList
      ];
}
