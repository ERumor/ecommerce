import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/framenineteen2_item_model.dart';
import '../models/developer_item_model.dart';
import '../models/smartapplewatch1_item_model.dart';
import 'package:ecommerce/presentation/workspaces_page/models/workspaces_model.dart';
part 'workspaces_event.dart';
part 'workspaces_state.dart';

/// A bloc that manages the state of a Workspaces according to the event that is dispatched to it.
class WorkspacesBloc extends Bloc<WorkspacesEvent, WorkspacesState> {
  WorkspacesBloc(super.initialState) {
    on<WorkspacesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WorkspacesInitialEvent event,
    Emitter<WorkspacesState> emit,
  ) async {
    emit(state.copyWith(
        workspacesModelObj: state.workspacesModelObj?.copyWith(
      framenineteen2ItemList: fillFramenineteen2ItemList(),
      developerItemList: fillDeveloperItemList(),
      smartapplewatch1ItemList: fillSmartapplewatch1ItemList(),
    )));
  }

  List<Framenineteen2ItemModel> fillFramenineteen2ItemList() {
    return [
      Framenineteen2ItemModel(
          uSBMicrophone: ImageConstant.imgImage122,
          uSBMicrophone1: "USB Microphone",
          price: "USD 87.00",
          fortyEight: "4.8"),
      Framenineteen2ItemModel(
          uSBMicrophone: ImageConstant.imgImage123,
          uSBMicrophone1: "Wireless headset",
          price: "GHC USD 74.00",
          fortyEight: "4.2"),
      Framenineteen2ItemModel(
          uSBMicrophone: ImageConstant.imgImage124,
          uSBMicrophone1: "Huawei Laptop",
          price: "USD 599.00",
          fortyEight: "4.3")
    ];
  }

  List<DeveloperItemModel> fillDeveloperItemList() {
    return [
      DeveloperItemModel(
          developer: ImageConstant.imgImage1356x64,
          developer1: "Developer",
          suggestedItems: "16 suggested items"),
      DeveloperItemModel(
          developer: ImageConstant.imgImage15,
          developer1: "Digital Marketing",
          suggestedItems: "8 suggested items")
    ];
  }

  List<Smartapplewatch1ItemModel> fillSmartapplewatch1ItemList() {
    return [
      Smartapplewatch1ItemModel(
          image: ImageConstant.imgImage1482x82,
          image1: ImageConstant.imgWishlistWhiteA7000132x32,
          smartAppleWatch: "Apple Macbook Pro 12inch",
          maddyWorkspaces: "Apple",
          fortyEight: "4.9",
          price: "1,499.00"),
      Smartapplewatch1ItemModel(
          image: ImageConstant.imgImage1466x92,
          image1: ImageConstant.imgWishlistWhiteA7000132x32,
          smartAppleWatch: "JVC Recording Camera 1500L ",
          maddyWorkspaces: "Jodde Electronics",
          fortyEight: "4.8",
          price: "319.00"),
      Smartapplewatch1ItemModel(
          image: ImageConstant.imgImage1460x60,
          image1: ImageConstant.imgWishlistWhiteA70001,
          smartAppleWatch: "Logitech G433 Headset",
          maddyWorkspaces: "Zone Electroncs",
          fortyEight: "4.2",
          price: "91.00"),
      Smartapplewatch1ItemModel(
          image: ImageConstant.imgImage1472x72,
          image1: ImageConstant.imgWishlistWhiteA7000132x32,
          smartAppleWatch: "Apple iPad Pro Wifi -512GB",
          maddyWorkspaces: "Apple",
          fortyEight: "4.8",
          price: "1,379.00")
    ];
  }
}
