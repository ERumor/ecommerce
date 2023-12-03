// ignore_for_file: must_be_immutable

part of 'filter_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///FilterOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class FilterOneEvent extends Equatable {}

/// Event that is dispatched when the FilterOne widget is first created.
class FilterOneInitialEvent extends FilterOneEvent {
  @override
  List<Object?> get props => [];
}

class LaptopsItemEvent extends FilterOneEvent {
  LaptopsItemEvent({
    required this.index,
    this.laptops,
  });

  int index;

  bool? laptops;

  @override
  List<Object?> get props => [
        index,
        laptops,
      ];
}
