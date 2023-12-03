import '../../../core/app_export.dart';

/// This class is used in the [collections_item_widget] screen.
class CollectionsItemModel {
  CollectionsItemModel({
    this.smartWatch,
    this.smartWatch1,
    this.seeCollection,
    this.id,
  }) {
    smartWatch = smartWatch ?? ImageConstant.imgImage13102x108;
    smartWatch1 = smartWatch1 ?? "Smart Watch";
    seeCollection = seeCollection ?? "See collection";
    id = id ?? "";
  }

  String? smartWatch;

  String? smartWatch1;

  String? seeCollection;

  String? id;
}
