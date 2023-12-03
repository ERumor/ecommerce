// ignore_for_file: must_be_immutable

part of 'workspaces_tab_container_bloc.dart';

/// Represents the state of WorkspacesTabContainer in the application.
class WorkspacesTabContainerState extends Equatable {
  WorkspacesTabContainerState({
    this.vuesaxlinearsettingFourController,
    this.sliderIndex = 0,
    this.workspacesTabContainerModelObj,
  });

  TextEditingController? vuesaxlinearsettingFourController;

  WorkspacesTabContainerModel? workspacesTabContainerModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        vuesaxlinearsettingFourController,
        sliderIndex,
        workspacesTabContainerModelObj,
      ];
  WorkspacesTabContainerState copyWith({
    TextEditingController? vuesaxlinearsettingFourController,
    int? sliderIndex,
    WorkspacesTabContainerModel? workspacesTabContainerModelObj,
  }) {
    return WorkspacesTabContainerState(
      vuesaxlinearsettingFourController: vuesaxlinearsettingFourController ??
          this.vuesaxlinearsettingFourController,
      sliderIndex: sliderIndex ?? this.sliderIndex,
      workspacesTabContainerModelObj:
          workspacesTabContainerModelObj ?? this.workspacesTabContainerModelObj,
    );
  }
}
