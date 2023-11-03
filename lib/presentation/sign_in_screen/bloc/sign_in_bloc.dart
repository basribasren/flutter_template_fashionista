import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/sign_in_screen/models/sign_in_model.dart';
import 'package:basri_s_application22/data/models/login/post_login_resp.dart';
import 'package:basri_s_application22/data/models/login/post_login_req.dart';
import 'dart:async';
import 'package:basri_s_application22/data/repository/repository.dart';
part 'sign_in_event.dart';
part 'sign_in_state.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(SignInState initialState) : super(initialState) {
    on<SignInInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<CreateLoginEvent>(_callCreateLogin);
  }

  final _repository = Repository();

  var postLoginResp = PostLoginResp();

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<SignInState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _onInitialize(
    SignInInitialEvent event,
    Emitter<SignInState> emit,
  ) async {
    emit(state.copyWith(
        nameController: TextEditingController(),
        group963Controller: TextEditingController(),
        isShowPassword: true));
  }

  FutureOr<void> _callCreateLogin(
    CreateLoginEvent event,
    Emitter<SignInState> emit,
  ) async {
    var postLoginReq = PostLoginReq(
      username: state.nameController?.text,
      password: state.group963Controller?.text,
    );
    await _repository.createLogin(
      headers: {
        'Content-Type': 'application/json',
      },
      requestData: postLoginReq.toJson(),
    ).then((value) async {
      postLoginResp = value;
      _onCreateLoginSuccess(value, emit);
      event.onCreateLoginEventSuccess.call();
    }).onError((error, stackTrace) {
      //implement error call
      _onCreateLoginError();
      event.onCreateLoginEventError.call();
    });
  }

  void _onCreateLoginSuccess(
    PostLoginResp resp,
    Emitter<SignInState> emit,
  ) {
    PrefUtils().setToken(resp.data!.token!.toString());
    emit(
      state.copyWith(
        signInModelObj: state.signInModelObj?.copyWith(),
      ),
    );
  }

  void _onCreateLoginError() {
    //implement error method body...
  }
}
