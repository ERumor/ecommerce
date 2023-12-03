// ignore_for_file: must_be_immutable

part of 'view_item_bloc.dart';

/// Represents the state of ViewItem in the application.
class ViewItemState extends Equatable {
  ViewItemState({
    this.sliderIndex = 0,
    this.viewItemModelObj,
  });

  ViewItemModel? viewItemModelObj;

  int sliderIndex;

  @override
  List<Object?> get props => [
        sliderIndex,
        viewItemModelObj,
      ];
  ViewItemState copyWith({
    int? sliderIndex,
    ViewItemModel? viewItemModelObj,
  }) {
    return ViewItemState(
      sliderIndex: sliderIndex ?? this.sliderIndex,
      viewItemModelObj: viewItemModelObj ?? this.viewItemModelObj,
    );
  }
}
