import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ecommerce/presentation/filter_screen/models/filter_model.dart';
part 'filter_event.dart';
part 'filter_state.dart';

/// A bloc that manages the state of a Filter according to the event that is dispatched to it.
class FilterBloc extends Bloc<FilterEvent, FilterState> {
  FilterBloc(super.initialState) {
    on<FilterInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<FilterState> emit,
  ) {
    emit(state.copyWith(laptops: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<FilterState> emit,
  ) {
    emit(state.copyWith(logitech: event.value));
  }

  _onInitialize(
    FilterInitialEvent event,
    Emitter<FilterState> emit,
  ) async {
    emit(state.copyWith(laptops: false, logitech: false));
  }
}
