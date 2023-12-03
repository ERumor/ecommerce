import '../../../core/app_export.dart';

/// This class is used in the [framenineteen3_item_widget] screen.
class Framenineteen3ItemModel {
  Framenineteen3ItemModel({
    this.uSBportHub,
    this.uSBMicrophone,
    this.price,
    this.fortyEight,
    this.id,
  }) {
    uSBportHub = uSBportHub ?? ImageConstant.imgImage1212;
    uSBMicrophone = uSBMicrophone ?? "USB 4port Hub";
    price = price ?? "USD 33.00";
    fortyEight = fortyEight ?? "4.8";
    id = id ?? "";
  }

  String? uSBportHub;

  String? uSBMicrophone;

  String? price;

  String? fortyEight;

  String? id;
}
