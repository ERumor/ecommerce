import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/eightytwo_item_model.dart';
import '../models/framenineteen3_item_model.dart';
import 'package:ecommerce/presentation/search_screen/models/search_model.dart';
part 'search_event.dart';
part 'search_state.dart';

/// A bloc that manages the state of a Search according to the event that is dispatched to it.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc(super.initialState) {
    on<SearchInitialEvent>(_onInitialize);
  }

  List<EightytwoItemModel> fillEightytwoItemList() {
    return [
      EightytwoItemModel(
          image: ImageConstant.imgImage141,
          smartAppleWatch: "Wooden Monitor Stand",
          maddyWorkspaces: "Walnus Home",
          fortyEight: "4.3",
          price: "113.00"),
      EightytwoItemModel(
          image: ImageConstant.imgImage1460x60,
          smartAppleWatch: "Logitech G433 Headset",
          maddyWorkspaces: "Zone Electroncs",
          fortyEight: "4.2",
          price: "91.00")
    ];
  }

  List<Framenineteen3ItemModel> fillFramenineteen3ItemList() {
    return [
      Framenineteen3ItemModel(
          uSBportHub: ImageConstant.imgImage1212,
          uSBMicrophone: "USB 4port Hub",
          price: "USD 33.00",
          fortyEight: "4.8"),
      Framenineteen3ItemModel(
          uSBportHub: ImageConstant.imgImage124,
          uSBMicrophone: "Huawei Laptop",
          price: "USD 599.00",
          fortyEight: "4.3"),
      Framenineteen3ItemModel(
          uSBportHub: ImageConstant.imgImage1213,
          uSBMicrophone: "MX Keys for Mac",
          price: "GHC USD 99.00",
          fortyEight: "4.6")
    ];
  }

  _onInitialize(
    SearchInitialEvent event,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(nameController: TextEditingController()));
    emit(state.copyWith(
        searchModelObj: state.searchModelObj?.copyWith(
            eightytwoItemList: fillEightytwoItemList(),
            framenineteen3ItemList: fillFramenineteen3ItemList())));
  }
}
