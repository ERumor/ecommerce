import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/workspaces_item_model.dart';
import '../models/smartapplewatch_item_model.dart';
import '../models/laptop_model.dart';
import '../models/collections_model.dart';
import 'package:ecommerce/presentation/home_screen/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(super.initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            workspacesItemList: fillWorkspacesItemList(),
            smartapplewatchItemList: fillSmartapplewatchItemList(),
            laptopItemList: fillLaptopItemList(),
            collectionsItemList: fillCollectionsItemList())));
  }

  List<WorkspacesItemModel> fillWorkspacesItemList() {
    return [
      WorkspacesItemModel(
          developer: ImageConstant.imgImage13,
          developer1: "Developer",
          suggestedItem: "21 suggested items"),
      WorkspacesItemModel(
          developer: ImageConstant.imgImage13104x120,
          developer1: "Photographer",
          suggestedItem: "12 suggested items"),
      WorkspacesItemModel(
          developer: ImageConstant.imgImage131,
          developer1: "Creative",
          suggestedItem: "8 suggested items"),
      WorkspacesItemModel(
          developer: ImageConstant.imgImage132,
          developer1: "Marketer",
          suggestedItem: "19 suggested items"),
      WorkspacesItemModel(
          developer: ImageConstant.imgImage133,
          developer1: "YouTuber",
          suggestedItem: "15 suggested items")
    ];
  }

  List<SmartapplewatchItemModel> fillSmartapplewatchItemList() {
    return [
      SmartapplewatchItemModel(
          image: ImageConstant.imgImage14,
          image1: ImageConstant.imgWishlistWhiteA70001,
          smartAppleWatch: "Smart Apple Watch SE",
          maddyWorkspaces: "Jodde Electronics",
          fortyEight: "4.8",
          price: "319.00"),
      SmartapplewatchItemModel(
          image: ImageConstant.imgImage1468x83,
          image1: ImageConstant.imgWishlistWhiteA7000132x32,
          smartAppleWatch: "HP Laptop - 10th generation",
          maddyWorkspaces: "Maddy Workspaces",
          fortyEight: "4.6",
          price: "850.00"),
      SmartapplewatchItemModel(
          image: ImageConstant.imgImage1460x60,
          image1: ImageConstant.imgWishlistWhiteA70001,
          smartAppleWatch: "Logitech G433 Headset",
          maddyWorkspaces: "Zone Electroncs",
          fortyEight: "4.2",
          price: "91.00"),
      SmartapplewatchItemModel(
          image: ImageConstant.imgImage141,
          image1: ImageConstant.imgWishlistWhiteA70001,
          smartAppleWatch: "Wooden Monitor Stand",
          maddyWorkspaces: "Walnus Home",
          fortyEight: "4.3",
          price: "113.00")
    ];
  }

  List<LaptopItemModel> fillLaptopItemList() {
    return [
      LaptopItemModel(
          image: ImageConstant.imgImage12,
          appleMacbookPro: "Apple Macbook Pro 16inch",
          price: "USD 1,799.00",
          fortyEight: "4.8"),
      LaptopItemModel(
          image: ImageConstant.imgImage12104x120,
          appleMacbookPro: "Microsoft Surface Laptop 4 ",
          price: "USD 1,499.00",
          fortyEight: "4.3"),
      LaptopItemModel(
          image: ImageConstant.imgImage121,
          appleMacbookPro: "HP Laptop 8th Gen Core i3",
          price: "USD 1,354.00",
          fortyEight: "4.5"),
      LaptopItemModel(
          image: ImageConstant.imgImage12108x120,
          appleMacbookPro: "Dell Inspiron  3583 Core i5",
          price: "USD 1,412.00",
          fortyEight: "4.6")
    ];
  }

  List<CollectionsItemModel> fillCollectionsItemList() {
    return [
      CollectionsItemModel(
          smartWatch: ImageConstant.imgImage13102x108,
          smartWatch1: "Smart Watch",
          seeCollection: "See collection"),
      CollectionsItemModel(
          smartWatch: ImageConstant.imgImage134,
          smartWatch1: "Headsets",
          seeCollection: "See collection"),
      CollectionsItemModel(
          smartWatch: ImageConstant.imgImage135,
          smartWatch1: "Ergonomic Chair",
          seeCollection: "See collection"),
      CollectionsItemModel(
          smartWatch: ImageConstant.imgImage136,
          smartWatch1: "Apple iPads",
          seeCollection: "See collection"),
      CollectionsItemModel(
          smartWatch: ImageConstant.imgImage137,
          smartWatch1: "Desk Lamps",
          seeCollection: "See collection")
    ];
  }
}
