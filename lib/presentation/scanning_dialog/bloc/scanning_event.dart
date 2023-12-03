// ignore_for_file: must_be_immutable

part of 'scanning_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Scanning widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScanningEvent extends Equatable {}

/// Event that is dispatched when the Scanning widget is first created.
class ScanningInitialEvent extends ScanningEvent {
  @override
  List<Object?> get props => [];
}
