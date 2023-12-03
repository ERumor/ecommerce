import '../../../core/app_export.dart';

/// This class is used in the [smartapplewatch_item_widget] screen.
class SmartapplewatchItemModel {
  SmartapplewatchItemModel({
    this.image,
    this.image1,
    this.smartAppleWatch,
    this.maddyWorkspaces,
    this.fortyEight,
    this.price,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage14;
    image1 = image1 ?? ImageConstant.imgWishlistWhiteA70001;
    smartAppleWatch = smartAppleWatch ?? "Smart Apple Watch SE";
    maddyWorkspaces = maddyWorkspaces ?? "Jodde Electronics";
    fortyEight = fortyEight ?? "4.8";
    price = price ?? "319.00";
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
