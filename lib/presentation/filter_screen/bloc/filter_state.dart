// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

/// Represents the state of Filter in the application.
class FilterState extends Equatable {
  FilterState({
    this.laptops = false,
    this.logitech = false,
    this.filterModelObj,
  });

  FilterModel? filterModelObj;

  bool laptops;

  bool logitech;

  @override
  List<Object?> get props => [
        laptops,
        logitech,
        filterModelObj,
      ];
  FilterState copyWith({
    bool? laptops,
    bool? logitech,
    FilterModel? filterModelObj,
  }) {
    return FilterState(
      laptops: laptops ?? this.laptops,
      logitech: logitech ?? this.logitech,
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
