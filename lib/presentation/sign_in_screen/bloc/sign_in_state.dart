// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

class SignInState extends Equatable {
  SignInState({
    this.nameController,
    this.group963Controller,
    this.isShowPassword = true,
    this.signInModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? group963Controller;

  SignInModel? signInModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        group963Controller,
        isShowPassword,
        signInModelObj,
      ];
  SignInState copyWith({
    TextEditingController? nameController,
    TextEditingController? group963Controller,
    bool? isShowPassword,
    SignInModel? signInModelObj,
  }) {
    return SignInState(
      nameController: nameController ?? this.nameController,
      group963Controller: group963Controller ?? this.group963Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signInModelObj: signInModelObj ?? this.signInModelObj,
    );
  }
}
