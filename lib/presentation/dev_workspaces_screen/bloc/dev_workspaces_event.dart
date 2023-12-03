// ignore_for_file: must_be_immutable

part of 'dev_workspaces_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DevWorkspaces widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class DevWorkspacesEvent extends Equatable {}

/// Event that is dispatched when the DevWorkspaces widget is first created.
class DevWorkspacesInitialEvent extends DevWorkspacesEvent {
  @override
  List<Object?> get props => [];
}
