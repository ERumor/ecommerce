// ignore_for_file: must_be_immutable

part of 'scanned_item_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ScannedItem widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScannedItemEvent extends Equatable {}

/// Event that is dispatched when the ScannedItem widget is first created.
class ScannedItemInitialEvent extends ScannedItemEvent {
  @override
  List<Object?> get props => [];
}
