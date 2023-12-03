import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orders_item_model.dart';
import 'package:ecommerce/presentation/orders_screen/models/orders_model.dart';
part 'orders_event.dart';
part 'orders_state.dart';

/// A bloc that manages the state of a Orders according to the event that is dispatched to it.
class OrdersBloc extends Bloc<OrdersEvent, OrdersState> {
  OrdersBloc(super.initialState) {
    on<OrdersInitialEvent>(_onInitialize);
  }

  List<OrdersItemModel> fillOrdersItemList() {
    return [
      OrdersItemModel(
          image: ImageConstant.imgRectangle122,
          month: "Delivered September 30",
          appleAirpodsPro: "Apple Airpods Pro 2nd Gen  with Wireless Charging"),
      OrdersItemModel(
          image: ImageConstant.imgRectangle122104x98,
          month: "Delivered September 12",
          appleAirpodsPro: "Wall Rustic Ash Floating Book Shelf"),
      OrdersItemModel(
          image: ImageConstant.imgRectangle1221,
          month: "Delivered September 30",
          appleAirpodsPro: "Cherry -wood Headphone Stand"),
      OrdersItemModel(
          image: ImageConstant.imgRectangle1222,
          month: "Delivered April 19",
          appleAirpodsPro: "Sony Playstation 5 PS5 Console (Disc Version)"),
      OrdersItemModel(image: ImageConstant.imgRectangle1222)
    ];
  }

  _onInitialize(
    OrdersInitialEvent event,
    Emitter<OrdersState> emit,
  ) async {
    emit(state.copyWith(nameController: TextEditingController()));
    emit(state.copyWith(
        ordersModelObj: state.ordersModelObj
            ?.copyWith(ordersItemList: fillOrdersItemList())));
  }
}
