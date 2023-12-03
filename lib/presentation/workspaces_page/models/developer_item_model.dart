import '../../../core/app_export.dart';

/// This class is used in the [developer_item_widget] screen.
class DeveloperItemModel {
  DeveloperItemModel({
    this.developer,
    this.developer1,
    this.suggestedItems,
    this.id,
  }) {
    developer = developer ?? ImageConstant.imgImage1356x64;
    developer1 = developer1 ?? "Developer";
    suggestedItems = suggestedItems ?? "16 suggested items";
    id = id ?? "";
  }

  String? developer;

  String? developer1;

  String? suggestedItems;

  String? id;
}
