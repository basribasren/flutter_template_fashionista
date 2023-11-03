import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/logout_bottomsheet/models/logout_model.dart';
part 'logout_event.dart';
part 'logout_state.dart';

class LogoutBloc extends Bloc<LogoutEvent, LogoutState> {
  LogoutBloc(LogoutState initialState) : super(initialState) {
    on<LogoutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LogoutInitialEvent event,
    Emitter<LogoutState> emit,
  ) async {}
}
