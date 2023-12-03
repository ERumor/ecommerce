import '../../../core/app_export.dart';

/// This class is used in the [devworkspaces_item_widget] screen.
class DevworkspacesItemModel {
  DevworkspacesItemModel({
    this.mMacbookPro,
    this.heart,
    this.mMacbookPro1,
    this.price,
    this.fortyTwo,
    this.id,
  }) {
    mMacbookPro = mMacbookPro ?? ImageConstant.imgImage1290x119;
    heart = heart ?? ImageConstant.imgHeart;
    mMacbookPro1 = mMacbookPro1 ?? "M1 Macbook Pro 2020";
    price = price ?? "USD 1,199.00";
    fortyTwo = fortyTwo ?? "4.9";
    id = id ?? "";
  }

  String? mMacbookPro;

  String? heart;

  String? mMacbookPro1;

  String? price;

  String? fortyTwo;

  String? id;
}
