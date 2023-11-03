// ignore_for_file: must_be_immutable

part of 'complete_bloc.dart';

class CompleteState extends Equatable {
  CompleteState({this.completeModelObj});

  CompleteModel? completeModelObj;

  @override
  List<Object?> get props => [
        completeModelObj,
      ];
  CompleteState copyWith({CompleteModel? completeModelObj}) {
    return CompleteState(
      completeModelObj: completeModelObj ?? this.completeModelObj,
    );
  }
}
