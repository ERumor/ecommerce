// ignore_for_file: must_be_immutable

part of 'dev_workspaces_bloc.dart';

/// Represents the state of DevWorkspaces in the application.
class DevWorkspacesState extends Equatable {
  DevWorkspacesState({this.devWorkspacesModelObj});

  DevWorkspacesModel? devWorkspacesModelObj;

  @override
  List<Object?> get props => [
        devWorkspacesModelObj,
      ];
  DevWorkspacesState copyWith({DevWorkspacesModel? devWorkspacesModelObj}) {
    return DevWorkspacesState(
      devWorkspacesModelObj:
          devWorkspacesModelObj ?? this.devWorkspacesModelObj,
    );
  }
}
