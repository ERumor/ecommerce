import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce/presentation/checkout_screen/models/checkout_model.dart';
part 'checkout_event.dart';
part 'checkout_state.dart';

/// A bloc that manages the state of a Checkout according to the event that is dispatched to it.
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc(super.initialState) {
    on<CheckoutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckoutInitialEvent event,
    Emitter<CheckoutState> emit,
  ) async {}
}
