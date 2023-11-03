// ignore_for_file: must_be_immutable

part of 'onbording_three_bloc.dart';

class OnbordingThreeState extends Equatable {
  OnbordingThreeState({this.onbordingThreeModelObj});

  OnbordingThreeModel? onbordingThreeModelObj;

  @override
  List<Object?> get props => [
        onbordingThreeModelObj,
      ];
  OnbordingThreeState copyWith({OnbordingThreeModel? onbordingThreeModelObj}) {
    return OnbordingThreeState(
      onbordingThreeModelObj:
          onbordingThreeModelObj ?? this.onbordingThreeModelObj,
    );
  }
}
