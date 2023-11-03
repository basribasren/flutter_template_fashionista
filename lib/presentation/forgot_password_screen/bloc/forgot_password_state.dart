// ignore_for_file: must_be_immutable

part of 'forgot_password_bloc.dart';

class ForgotPasswordState extends Equatable {
  ForgotPasswordState({
    this.group1003Controller,
    this.forgotPasswordModelObj,
  });

  TextEditingController? group1003Controller;

  ForgotPasswordModel? forgotPasswordModelObj;

  @override
  List<Object?> get props => [
        group1003Controller,
        forgotPasswordModelObj,
      ];
  ForgotPasswordState copyWith({
    TextEditingController? group1003Controller,
    ForgotPasswordModel? forgotPasswordModelObj,
  }) {
    return ForgotPasswordState(
      group1003Controller: group1003Controller ?? this.group1003Controller,
      forgotPasswordModelObj:
          forgotPasswordModelObj ?? this.forgotPasswordModelObj,
    );
  }
}
