import '../../../core/app_export.dart';

/// This class is used in the [smartapplewatch1_item_widget] screen.
class Smartapplewatch1ItemModel {
  Smartapplewatch1ItemModel({
    this.image,
    this.image1,
    this.smartAppleWatch,
    this.maddyWorkspaces,
    this.fortyEight,
    this.price,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage1482x82;
    image1 = image1 ?? ImageConstant.imgWishlistWhiteA7000132x32;
    smartAppleWatch = smartAppleWatch ?? "Apple Macbook Pro 12inch";
    maddyWorkspaces = maddyWorkspaces ?? "Apple";
    fortyEight = fortyEight ?? "4.9";
    price = price ?? "1,499.00";
    id = id ?? "";
  }

  String? image;

  String? image1;

  String? smartAppleWatch;

  String? maddyWorkspaces;

  String? fortyEight;

  String? price;

  String? id;
}
