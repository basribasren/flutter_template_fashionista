import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/sign_up_sign_in_screen/models/sign_up_sign_in_model.dart';
part 'sign_up_sign_in_event.dart';
part 'sign_up_sign_in_state.dart';

class SignUpSignInBloc extends Bloc<SignUpSignInEvent, SignUpSignInState> {
  SignUpSignInBloc(SignUpSignInState initialState) : super(initialState) {
    on<SignUpSignInInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SignUpSignInInitialEvent event,
    Emitter<SignUpSignInState> emit,
  ) async {}
}
