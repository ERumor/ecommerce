import '../../../core/app_export.dart';

/// This class is used in the [cart_item_widget] screen.
class CartItemModel {
  CartItemModel({
    this.image,
    this.adjustableOffice,
    this.price,
    this.minus,
    this.one,
    this.add,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage1390x100;
    adjustableOffice =
        adjustableOffice ?? "Funiture Manila Adjustable Office Chair";
    price = price ?? "USD 87.00";
    minus = minus ?? ImageConstant.imgMinus;
    one = one ?? "1";
    add = add ?? ImageConstant.imgAdd;
    id = id ?? "";
  }

  String? image;

  String? adjustableOffice;

  String? price;

  String? minus;

  String? one;

  String? add;

  String? id;
}
