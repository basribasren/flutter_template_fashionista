import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/onbording_one_screen/models/onbording_one_model.dart';
part 'onbording_one_event.dart';
part 'onbording_one_state.dart';

class OnbordingOneBloc extends Bloc<OnbordingOneEvent, OnbordingOneState> {
  OnbordingOneBloc(OnbordingOneState initialState) : super(initialState) {
    on<OnbordingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnbordingOneInitialEvent event,
    Emitter<OnbordingOneState> emit,
  ) async {}
}
