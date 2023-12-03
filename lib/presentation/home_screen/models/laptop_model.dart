import '../../../core/app_export.dart';

/// This class is used in the [laptop_item_widget] screen.
class LaptopItemModel {
  LaptopItemModel({
    this.image,
    this.appleMacbookPro,
    this.price,
    this.fortyEight,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage12;
    appleMacbookPro = appleMacbookPro ?? "Apple Macbook Pro 16inch";
    price = price ?? "USD 1,799.00";
    fortyEight = fortyEight ?? "4.8";
    id = id ?? "";
  }

  String? image;

  String? appleMacbookPro;

  String? price;

  String? fortyEight;

  String? id;
}
