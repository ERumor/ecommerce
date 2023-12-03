import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/seventysix_item_model.dart';
import 'package:ecommerce/presentation/workspaces_tab_container_screen/models/workspaces_tab_container_model.dart';
part 'workspaces_tab_container_event.dart';
part 'workspaces_tab_container_state.dart';

/// A bloc that manages the state of a WorkspacesTabContainer according to the event that is dispatched to it.
class WorkspacesTabContainerBloc
    extends Bloc<WorkspacesTabContainerEvent, WorkspacesTabContainerState> {
  WorkspacesTabContainerBloc(super.initialState) {
    on<WorkspacesTabContainerInitialEvent>(_onInitialize);
  }

  List<SeventysixItemModel> fillSeventysixItemList() {
    return List.generate(1, (index) => SeventysixItemModel());
  }

  _onInitialize(
    WorkspacesTabContainerInitialEvent event,
    Emitter<WorkspacesTabContainerState> emit,
  ) async {
    emit(state.copyWith(
        vuesaxlinearsettingFourController: TextEditingController(),
        sliderIndex: 0));
    emit(state.copyWith(
        workspacesTabContainerModelObj: state.workspacesTabContainerModelObj
            ?.copyWith(seventysixItemList: fillSeventysixItemList())));
  }
}
