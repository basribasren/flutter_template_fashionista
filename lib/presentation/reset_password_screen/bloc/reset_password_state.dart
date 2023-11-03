// ignore_for_file: must_be_immutable

part of 'reset_password_bloc.dart';

class ResetPasswordState extends Equatable {
  ResetPasswordState({
    this.group964Controller,
    this.group965Controller,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.resetPasswordModelObj,
  });

  TextEditingController? group964Controller;

  TextEditingController? group965Controller;

  ResetPasswordModel? resetPasswordModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  @override
  List<Object?> get props => [
        group964Controller,
        group965Controller,
        isShowPassword,
        isShowPassword1,
        resetPasswordModelObj,
      ];
  ResetPasswordState copyWith({
    TextEditingController? group964Controller,
    TextEditingController? group965Controller,
    bool? isShowPassword,
    bool? isShowPassword1,
    ResetPasswordModel? resetPasswordModelObj,
  }) {
    return ResetPasswordState(
      group964Controller: group964Controller ?? this.group964Controller,
      group965Controller: group965Controller ?? this.group965Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      resetPasswordModelObj:
          resetPasswordModelObj ?? this.resetPasswordModelObj,
    );
  }
}
