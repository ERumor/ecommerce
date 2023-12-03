// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [filter_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FilterModel extends Equatable {
  const FilterModel();

  FilterModel copyWith() {
    return const FilterModel();
  }

  @override
  List<Object?> get props => [];
}
