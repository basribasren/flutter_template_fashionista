// ignore_for_file: must_be_immutable

part of 'onbording_two_bloc.dart';

class OnbordingTwoState extends Equatable {
  OnbordingTwoState({this.onbordingTwoModelObj});

  OnbordingTwoModel? onbordingTwoModelObj;

  @override
  List<Object?> get props => [
        onbordingTwoModelObj,
      ];
  OnbordingTwoState copyWith({OnbordingTwoModel? onbordingTwoModelObj}) {
    return OnbordingTwoState(
      onbordingTwoModelObj: onbordingTwoModelObj ?? this.onbordingTwoModelObj,
    );
  }
}
