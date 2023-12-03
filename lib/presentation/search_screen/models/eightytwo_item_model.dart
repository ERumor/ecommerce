import '../../../core/app_export.dart';

/// This class is used in the [eightytwo_item_widget] screen.
class EightytwoItemModel {
  EightytwoItemModel({
    this.image,
    this.smartAppleWatch,
    this.maddyWorkspaces,
    this.fortyEight,
    this.price,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage141;
    smartAppleWatch = smartAppleWatch ?? "Wooden Monitor Stand";
    maddyWorkspaces = maddyWorkspaces ?? "Walnus Home";
    fortyEight = fortyEight ?? "4.3";
    price = price ?? "113.00";
    id = id ?? "";
  }

  String? image;

  String? smartAppleWatch;

  String? maddyWorkspaces;

  String? fortyEight;

  String? price;

  String? id;
}
