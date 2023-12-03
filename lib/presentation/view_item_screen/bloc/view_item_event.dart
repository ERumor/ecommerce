// ignore_for_file: must_be_immutable

part of 'view_item_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ViewItem widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ViewItemEvent extends Equatable {}

/// Event that is dispatched when the ViewItem widget is first created.
class ViewItemInitialEvent extends ViewItemEvent {
  @override
  List<Object?> get props => [];
}
