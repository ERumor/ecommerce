import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/fifty_item_model.dart';
import 'package:ecommerce/presentation/view_item_screen/models/view_item_model.dart';
part 'view_item_event.dart';
part 'view_item_state.dart';

/// A bloc that manages the state of a ViewItem according to the event that is dispatched to it.
class ViewItemBloc extends Bloc<ViewItemEvent, ViewItemState> {
  ViewItemBloc(super.initialState) {
    on<ViewItemInitialEvent>(_onInitialize);
  }

  List<FiftyItemModel> fillFiftyItemList() {
    return List.generate(1, (index) => FiftyItemModel());
  }

  _onInitialize(
    ViewItemInitialEvent event,
    Emitter<ViewItemState> emit,
  ) async {
    emit(state.copyWith(sliderIndex: 0));
    emit(state.copyWith(
        viewItemModelObj: state.viewItemModelObj
            ?.copyWith(fiftyItemList: fillFiftyItemList())));
  }
}
