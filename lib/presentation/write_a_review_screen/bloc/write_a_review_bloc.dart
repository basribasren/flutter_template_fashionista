import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/write_a_review_screen/models/write_a_review_model.dart';
part 'write_a_review_event.dart';
part 'write_a_review_state.dart';

class WriteAReviewBloc extends Bloc<WriteAReviewEvent, WriteAReviewState> {
  WriteAReviewBloc(WriteAReviewState initialState) : super(initialState) {
    on<WriteAReviewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WriteAReviewInitialEvent event,
    Emitter<WriteAReviewState> emit,
  ) async {
    emit(state.copyWith(group1367Controller: TextEditingController()));
  }
}
