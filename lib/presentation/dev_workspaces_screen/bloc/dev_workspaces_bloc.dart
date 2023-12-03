import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/devworkspaces_item_model.dart';
import 'package:ecommerce/presentation/dev_workspaces_screen/models/dev_workspaces_model.dart';
part 'dev_workspaces_event.dart';
part 'dev_workspaces_state.dart';

/// A bloc that manages the state of a DevWorkspaces according to the event that is dispatched to it.
class DevWorkspacesBloc extends Bloc<DevWorkspacesEvent, DevWorkspacesState> {
  DevWorkspacesBloc(super.initialState) {
    on<DevWorkspacesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DevWorkspacesInitialEvent event,
    Emitter<DevWorkspacesState> emit,
  ) async {
    emit(state.copyWith(
        devWorkspacesModelObj: state.devWorkspacesModelObj
            ?.copyWith(devworkspacesItemList: fillDevworkspacesItemList())));
  }

  List<DevworkspacesItemModel> fillDevworkspacesItemList() {
    return [
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage1290x119,
          heart: ImageConstant.imgHeart,
          mMacbookPro1: "M1 Macbook Pro 2020",
          price: "USD 1,199.00",
          fortyTwo: "4.9"),
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage1390x119,
          heart: ImageConstant.imgCartPrimary,
          mMacbookPro1: "Sanchos Office Desk..",
          price: "USD 71.12",
          fortyTwo: "4.2"),
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage12119x107,
          heart: ImageConstant.imgCartPrimary,
          mMacbookPro1: "Puton Coffee Maker, Auto ...",
          price: "USD 83.00",
          fortyTwo: "4.7"),
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage125,
          heart: ImageConstant.imgHeart),
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage126,
          heart: ImageConstant.imgHeart,
          mMacbookPro1: "2.4G Optical Wireless Mouse",
          price: "USD 23.00",
          fortyTwo: "4.2"),
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage127,
          heart: ImageConstant.imgHeart,
          mMacbookPro1: "Jarvis Hardwood Standing Desk",
          price: "USD 1,399.00",
          fortyTwo: "4.2"),
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage128,
          heart: ImageConstant.imgHeart,
          mMacbookPro1: "Boat Airpods 203 - Wireless",
          price: "USD 79.00",
          fortyTwo: "4.2"),
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage129,
          heart: ImageConstant.imgHeart,
          mMacbookPro1: "Logitech Folio Touch",
          price: "USD 329.00",
          fortyTwo: "4.2"),
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage1210,
          heart: ImageConstant.imgHeart,
          mMacbookPro1: "Black Slot 5 Shelf Unit",
          price: "USD 61.00",
          fortyTwo: "4.2"),
      DevworkspacesItemModel(
          mMacbookPro: ImageConstant.imgImage1211,
          heart: ImageConstant.imgHeart,
          mMacbookPro1: "Portable Bluetooth Spea..",
          price: "USD 36.99",
          fortyTwo: "4.2")
    ];
  }
}
