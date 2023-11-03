import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/complete_screen/models/complete_model.dart';
part 'complete_event.dart';
part 'complete_state.dart';

class CompleteBloc extends Bloc<CompleteEvent, CompleteState> {
  CompleteBloc(CompleteState initialState) : super(initialState) {
    on<CompleteInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CompleteInitialEvent event,
    Emitter<CompleteState> emit,
  ) async {}
}
