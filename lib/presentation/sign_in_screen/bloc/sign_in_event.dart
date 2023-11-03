// ignore_for_file: must_be_immutable

part of 'sign_in_bloc.dart';

@immutable
abstract class SignInEvent extends Equatable {}

class SignInInitialEvent extends SignInEvent {
  @override
  List<Object?> get props => [];
}

class CreateLoginEvent extends SignInEvent {
  CreateLoginEvent({
    required this.onCreateLoginEventSuccess,
    required this.onCreateLoginEventError,
  });

  Function onCreateLoginEventSuccess;

  Function onCreateLoginEventError;

  @override
  List<Object?> get props => [
        onCreateLoginEventSuccess,
        onCreateLoginEventError,
      ];
}

class GoogleAuthEvent extends SignInEvent {
  GoogleAuthEvent({
    required this.onGoogleAuthSuccess,
    required this.onGoogleAuthError,
  });

  Function onGoogleAuthSuccess;

  Function onGoogleAuthError;

  @override
  List<Object?> get props => [
        onGoogleAuthSuccess,
        onGoogleAuthError,
      ];
}

///event for change password visibility
class ChangePasswordVisibilityEvent extends SignInEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
