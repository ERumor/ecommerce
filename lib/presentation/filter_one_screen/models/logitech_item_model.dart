import '../../../core/app_export.dart';

/// This class is used in the [logitech_item_widget] screen.
class LogitechItemModel {
  LogitechItemModel({
    this.laptops,
    this.apple,
    this.id,
  }) {
    laptops = laptops ?? "Apple";
    apple = apple ?? ImageConstant.imgSelection;
    id = id ?? "";
  }

  String? laptops;

  String? apple;

  String? id;
}
