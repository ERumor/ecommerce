import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/laptops_item_model.dart';
import '../models/logitech_item_model.dart';
import 'package:ecommerce/presentation/filter_one_screen/models/filter_one_model.dart';
part 'filter_one_event.dart';
part 'filter_one_state.dart';

/// A bloc that manages the state of a FilterOne according to the event that is dispatched to it.
class FilterOneBloc extends Bloc<FilterOneEvent, FilterOneState> {
  FilterOneBloc(super.initialState) {
    on<FilterOneInitialEvent>(_onInitialize);
    on<LaptopsItemEvent>(_laptopsItem);
  }

  _onInitialize(
    FilterOneInitialEvent event,
    Emitter<FilterOneState> emit,
  ) async {
    emit(
      state.copyWith(
        filterOneModelObj: state.filterOneModelObj?.copyWith(
          laptopsItemList: fillLaptopsItemList(),
          logitechItemList: fillLogitechItemList(),
        ),
      ),
    );
  }

  _laptopsItem(
    LaptopsItemEvent event,
    Emitter<FilterOneState> emit,
  ) {
    List<LaptopsItemModel> newList =
        List<LaptopsItemModel>.from(state.filterOneModelObj!.laptopsItemList);
    newList[event.index] = newList[event.index].copyWith(
      laptops: event.laptops,
    );
    emit(state.copyWith(
        filterOneModelObj:
            state.filterOneModelObj?.copyWith(laptopsItemList: newList)));
  }

  List<LaptopsItemModel> fillLaptopsItemList() {
    return List.generate(6, (index) => LaptopsItemModel());
  }

  List<LogitechItemModel> fillLogitechItemList() {
    return [
      LogitechItemModel(laptops: "Apple", apple: ImageConstant.imgSelection),
      LogitechItemModel(laptops: "Sensibo"),
      LogitechItemModel(laptops: "Dell", apple: ImageConstant.imgSelection)
    ];
  }
}
