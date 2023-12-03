// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'framenineteen2_item_model.dart';
import 'developer_item_model.dart';
import 'smartapplewatch1_item_model.dart';

/// This class defines the variables used in the [workspaces_page],
/// and is typically used to hold data that is passed between different parts of the application.
class WorkspacesModel extends Equatable {
  WorkspacesModel({
    this.framenineteen2ItemList = const [],
    this.developerItemList = const [],
    this.smartapplewatch1ItemList = const [],
  });

  List<Framenineteen2ItemModel> framenineteen2ItemList;

  List<DeveloperItemModel> developerItemList;

  List<Smartapplewatch1ItemModel> smartapplewatch1ItemList;

  WorkspacesModel copyWith({
    List<Framenineteen2ItemModel>? framenineteen2ItemList,
    List<DeveloperItemModel>? developerItemList,
    List<Smartapplewatch1ItemModel>? smartapplewatch1ItemList,
  }) {
    return WorkspacesModel(
      framenineteen2ItemList:
          framenineteen2ItemList ?? this.framenineteen2ItemList,
      developerItemList: developerItemList ?? this.developerItemList,
      smartapplewatch1ItemList:
          smartapplewatch1ItemList ?? this.smartapplewatch1ItemList,
    );
  }

  @override
  List<Object?> get props =>
      [framenineteen2ItemList, developerItemList, smartapplewatch1ItemList];
}
