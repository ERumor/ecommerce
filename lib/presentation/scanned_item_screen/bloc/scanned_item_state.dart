// ignore_for_file: must_be_immutable

part of 'scanned_item_bloc.dart';

/// Represents the state of ScannedItem in the application.
class ScannedItemState extends Equatable {
  ScannedItemState({this.scannedItemModelObj});

  ScannedItemModel? scannedItemModelObj;

  @override
  List<Object?> get props => [
        scannedItemModelObj,
      ];
  ScannedItemState copyWith({ScannedItemModel? scannedItemModelObj}) {
    return ScannedItemState(
      scannedItemModelObj: scannedItemModelObj ?? this.scannedItemModelObj,
    );
  }
}
