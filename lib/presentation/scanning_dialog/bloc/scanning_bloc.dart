import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce/presentation/scanning_dialog/models/scanning_model.dart';
part 'scanning_event.dart';
part 'scanning_state.dart';

/// A bloc that manages the state of a Scanning according to the event that is dispatched to it.
class ScanningBloc extends Bloc<ScanningEvent, ScanningState> {
  ScanningBloc(super.initialState) {
    on<ScanningInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ScanningInitialEvent event,
    Emitter<ScanningState> emit,
  ) async {}
}
