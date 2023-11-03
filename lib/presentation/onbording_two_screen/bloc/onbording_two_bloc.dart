import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/onbording_two_screen/models/onbording_two_model.dart';
part 'onbording_two_event.dart';
part 'onbording_two_state.dart';

class OnbordingTwoBloc extends Bloc<OnbordingTwoEvent, OnbordingTwoState> {
  OnbordingTwoBloc(OnbordingTwoState initialState) : super(initialState) {
    on<OnbordingTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnbordingTwoInitialEvent event,
    Emitter<OnbordingTwoState> emit,
  ) async {}
}
