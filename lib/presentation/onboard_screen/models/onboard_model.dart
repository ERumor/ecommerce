// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [onboard_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OnboardModel extends Equatable {
  const OnboardModel();

  OnboardModel copyWith() {
    return const OnboardModel();
  }

  @override
  List<Object?> get props => [];
}
