// ignore_for_file: must_be_immutable

part of 'filter_one_bloc.dart';

/// Represents the state of FilterOne in the application.
class FilterOneState extends Equatable {
  FilterOneState({this.filterOneModelObj});

  FilterOneModel? filterOneModelObj;

  @override
  List<Object?> get props => [
        filterOneModelObj,
      ];
  FilterOneState copyWith({FilterOneModel? filterOneModelObj}) {
    return FilterOneState(
      filterOneModelObj: filterOneModelObj ?? this.filterOneModelObj,
    );
  }
}
