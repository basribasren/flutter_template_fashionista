// ignore_for_file: must_be_immutable

part of 'verification_code_bloc.dart';

@immutable
abstract class VerificationCodeEvent extends Equatable {}

class VerificationCodeInitialEvent extends VerificationCodeEvent {
  @override
  List<Object?> get props => [];
}

///event for OTP auto fill
class ChangeOTPEvent extends VerificationCodeEvent {
  ChangeOTPEvent({required this.code});

  String code;

  @override
  List<Object?> get props => [
        code,
      ];
}
