// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'orders_item_model.dart';

/// This class defines the variables used in the [orders_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrdersModel extends Equatable {
  OrdersModel({this.ordersItemList = const []});

  List<OrdersItemModel> ordersItemList;

  OrdersModel copyWith({List<OrdersItemModel>? ordersItemList}) {
    return OrdersModel(
      ordersItemList: ordersItemList ?? this.ordersItemList,
    );
  }

  @override
  List<Object?> get props => [ordersItemList];
}
