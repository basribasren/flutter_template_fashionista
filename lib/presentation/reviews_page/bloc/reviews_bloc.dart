import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listrating_item_model.dart';
import '../models/listdatatype_item_model.dart';
import 'package:basri_s_application22/presentation/reviews_page/models/reviews_model.dart';
part 'reviews_event.dart';
part 'reviews_state.dart';

class ReviewsBloc extends Bloc<ReviewsEvent, ReviewsState> {
  ReviewsBloc(ReviewsState initialState) : super(initialState) {
    on<ReviewsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ReviewsInitialEvent event,
    Emitter<ReviewsState> emit,
  ) async {
    emit(state.copyWith(
        reviewsModelObj: state.reviewsModelObj?.copyWith(
            listratingItemList: fillListratingItemList(),
            listdatatypeItemList: fillListdatatypeItemList())));
  }

  List<ListratingItemModel> fillListratingItemList() {
    return List.generate(2, (index) => ListratingItemModel());
  }

  List<ListdatatypeItemModel> fillListdatatypeItemList() {
    return List.generate(3, (index) => ListdatatypeItemModel());
  }
}
