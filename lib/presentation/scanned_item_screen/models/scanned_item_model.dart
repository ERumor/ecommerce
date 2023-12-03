// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [scanned_item_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScannedItemModel extends Equatable {
  const ScannedItemModel();

  ScannedItemModel copyWith() {
    return const ScannedItemModel();
  }

  @override
  List<Object?> get props => [];
}
