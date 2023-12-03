// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [scanning_dialog],
/// and is typically used to hold data that is passed between different parts of the application.
class ScanningModel extends Equatable {
  const ScanningModel();

  ScanningModel copyWith() {
    return const ScanningModel();
  }

  @override
  List<Object?> get props => [];
}
