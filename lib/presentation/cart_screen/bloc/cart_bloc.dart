import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/cart_item_model.dart';
import 'package:ecommerce/presentation/cart_screen/models/cart_model.dart';
part 'cart_event.dart';
part 'cart_state.dart';

/// A bloc that manages the state of a Cart according to the event that is dispatched to it.
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(super.initialState) {
    on<CartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) async {
    emit(state.copyWith(
        cartModelObj:
            state.cartModelObj?.copyWith(cartItemList: fillCartItemList())));
  }

  List<CartItemModel> fillCartItemList() {
    return [
      CartItemModel(
          image: ImageConstant.imgImage1390x100,
          adjustableOffice: "Funiture Manila Adjustable Office Chair",
          price: "USD 87.00",
          minus: ImageConstant.imgMinus,
          one: "1",
          add: ImageConstant.imgAdd),
      CartItemModel(
          image: ImageConstant.imgImage1310,
          adjustableOffice: "JBL Link Music Wifi Speaker",
          price: "USD 69.00",
          minus: ImageConstant.imgMinusGray400,
          one: "1",
          add: ImageConstant.imgAddGray400)
    ];
  }
}
