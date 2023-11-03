import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/onbording_three_screen/models/onbording_three_model.dart';
part 'onbording_three_event.dart';
part 'onbording_three_state.dart';

class OnbordingThreeBloc
    extends Bloc<OnbordingThreeEvent, OnbordingThreeState> {
  OnbordingThreeBloc(OnbordingThreeState initialState) : super(initialState) {
    on<OnbordingThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnbordingThreeInitialEvent event,
    Emitter<OnbordingThreeState> emit,
  ) async {}
}
