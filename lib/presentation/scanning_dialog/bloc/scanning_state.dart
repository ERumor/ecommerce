// ignore_for_file: must_be_immutable

part of 'scanning_bloc.dart';

/// Represents the state of Scanning in the application.
class ScanningState extends Equatable {
  ScanningState({this.scanningModelObj});

  ScanningModel? scanningModelObj;

  @override
  List<Object?> get props => [
        scanningModelObj,
      ];
  ScanningState copyWith({ScanningModel? scanningModelObj}) {
    return ScanningState(
      scanningModelObj: scanningModelObj ?? this.scanningModelObj,
    );
  }
}
