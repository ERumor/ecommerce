// ignore_for_file: must_be_immutable

part of 'workspaces_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WorkspacesTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WorkspacesTabContainerEvent extends Equatable {}

/// Event that is dispatched when the WorkspacesTabContainer widget is first created.
class WorkspacesTabContainerInitialEvent extends WorkspacesTabContainerEvent {
  @override
  List<Object?> get props => [];
}
