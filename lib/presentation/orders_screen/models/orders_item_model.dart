import '../../../core/app_export.dart';

/// This class is used in the [orders_item_widget] screen.
class OrdersItemModel {
  OrdersItemModel({
    this.image,
    this.month,
    this.appleAirpodsPro,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle122;
    month = month ?? "Delivered September 30";
    appleAirpodsPro =
        appleAirpodsPro ?? "Apple Airpods Pro 2nd Gen  with Wireless Charging";
    id = id ?? "";
  }

  String? image;

  String? month;

  String? appleAirpodsPro;

  String? id;
}
