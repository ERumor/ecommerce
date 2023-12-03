import '../../../core/app_export.dart';

/// This class is used in the [framenineteen2_item_widget] screen.
class Framenineteen2ItemModel {
  Framenineteen2ItemModel({
    this.uSBMicrophone,
    this.uSBMicrophone1,
    this.price,
    this.fortyEight,
    this.id,
  }) {
    uSBMicrophone = uSBMicrophone ?? ImageConstant.imgImage122;
    uSBMicrophone1 = uSBMicrophone1 ?? "USB Microphone";
    price = price ?? "USD 87.00";
    fortyEight = fortyEight ?? "4.8";
    id = id ?? "";
  }

  String? uSBMicrophone;

  String? uSBMicrophone1;

  String? price;

  String? fortyEight;

  String? id;
}
