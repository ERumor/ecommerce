// ignore_for_file: must_be_immutable

part of 'workspaces_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Workspaces widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WorkspacesEvent extends Equatable {}

/// Event that is dispatched when the Workspaces widget is first created.
class WorkspacesInitialEvent extends WorkspacesEvent {
  @override
  List<Object?> get props => [];
}
