// ignore_for_file: must_be_immutable

part of 'workspaces_bloc.dart';

/// Represents the state of Workspaces in the application.
class WorkspacesState extends Equatable {
  WorkspacesState({this.workspacesModelObj});

  WorkspacesModel? workspacesModelObj;

  @override
  List<Object?> get props => [
        workspacesModelObj,
      ];
  WorkspacesState copyWith({WorkspacesModel? workspacesModelObj}) {
    return WorkspacesState(
      workspacesModelObj: workspacesModelObj ?? this.workspacesModelObj,
    );
  }
}
