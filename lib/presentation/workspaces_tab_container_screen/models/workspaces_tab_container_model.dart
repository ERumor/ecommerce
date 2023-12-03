// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'seventysix_item_model.dart';

/// This class defines the variables used in the [workspaces_tab_container_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WorkspacesTabContainerModel extends Equatable {
  WorkspacesTabContainerModel({this.seventysixItemList = const []});

  List<SeventysixItemModel> seventysixItemList;

  WorkspacesTabContainerModel copyWith(
      {List<SeventysixItemModel>? seventysixItemList}) {
    return WorkspacesTabContainerModel(
      seventysixItemList: seventysixItemList ?? this.seventysixItemList,
    );
  }

  @override
  List<Object?> get props => [seventysixItemList];
}
