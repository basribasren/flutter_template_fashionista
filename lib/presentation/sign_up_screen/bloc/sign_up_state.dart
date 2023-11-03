// ignore_for_file: must_be_immutable

part of 'sign_up_bloc.dart';

class SignUpState extends Equatable {
  SignUpState({
    this.nameController,
    this.nameOneController,
    this.group964Controller,
    this.isShowPassword = true,
    this.signUpModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? nameOneController;

  TextEditingController? group964Controller;

  SignUpModel? signUpModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props => [
        nameController,
        nameOneController,
        group964Controller,
        isShowPassword,
        signUpModelObj,
      ];
  SignUpState copyWith({
    TextEditingController? nameController,
    TextEditingController? nameOneController,
    TextEditingController? group964Controller,
    bool? isShowPassword,
    SignUpModel? signUpModelObj,
  }) {
    return SignUpState(
      nameController: nameController ?? this.nameController,
      nameOneController: nameOneController ?? this.nameOneController,
      group964Controller: group964Controller ?? this.group964Controller,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      signUpModelObj: signUpModelObj ?? this.signUpModelObj,
    );
  }
}
