// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'devworkspaces_item_model.dart';

/// This class defines the variables used in the [dev_workspaces_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class DevWorkspacesModel extends Equatable {
  DevWorkspacesModel({this.devworkspacesItemList = const []});

  List<DevworkspacesItemModel> devworkspacesItemList;

  DevWorkspacesModel copyWith(
      {List<DevworkspacesItemModel>? devworkspacesItemList}) {
    return DevWorkspacesModel(
      devworkspacesItemList:
          devworkspacesItemList ?? this.devworkspacesItemList,
    );
  }

  @override
  List<Object?> get props => [devworkspacesItemList];
}
