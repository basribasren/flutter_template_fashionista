// ignore_for_file: must_be_immutable

part of 'sign_up_sign_in_bloc.dart';

@immutable
abstract class SignUpSignInEvent extends Equatable {}

class SignUpSignInInitialEvent extends SignUpSignInEvent {
  @override
  List<Object?> get props => [];
}
