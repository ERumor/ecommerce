// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Filter widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterEvent extends Equatable {}

/// Event that is dispatched when the Filter widget is first created.
class FilterInitialEvent extends FilterEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends FilterEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends FilterEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
