import '../../../core/app_export.dart';

/// This class is used in the [workspaces_item_widget] screen.
class WorkspacesItemModel {
  WorkspacesItemModel({
    this.developer,
    this.developer1,
    this.suggestedItem,
    this.id,
  }) {
    developer = developer ?? ImageConstant.imgImage13;
    developer1 = developer1 ?? "Developer";
    suggestedItem = suggestedItem ?? "21 suggested items";
    id = id ?? "";
  }

  String? developer;

  String? developer1;

  String? suggestedItem;

  String? id;
}
