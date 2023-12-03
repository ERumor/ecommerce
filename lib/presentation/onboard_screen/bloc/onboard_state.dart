// ignore_for_file: must_be_immutable

part of 'onboard_bloc.dart';

/// Represents the state of Onboard in the application.
class OnboardState extends Equatable {
  OnboardState({this.onboardModelObj});

  OnboardModel? onboardModelObj;

  @override
  List<Object?> get props => [
        onboardModelObj,
      ];
  OnboardState copyWith({OnboardModel? onboardModelObj}) {
    return OnboardState(
      onboardModelObj: onboardModelObj ?? this.onboardModelObj,
    );
  }
}
