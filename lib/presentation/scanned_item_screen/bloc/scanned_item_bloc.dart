import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce/presentation/scanned_item_screen/models/scanned_item_model.dart';
part 'scanned_item_event.dart';
part 'scanned_item_state.dart';

/// A bloc that manages the state of a ScannedItem according to the event that is dispatched to it.
class ScannedItemBloc extends Bloc<ScannedItemEvent, ScannedItemState> {
  ScannedItemBloc(super.initialState) {
    on<ScannedItemInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScannedItemInitialEvent event,
    Emitter<ScannedItemState> emit,
  ) async {}
}
