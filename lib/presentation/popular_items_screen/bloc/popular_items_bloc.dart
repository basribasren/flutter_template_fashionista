import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/popularitems_item_model.dart';
import 'package:basri_s_application22/presentation/popular_items_screen/models/popular_items_model.dart';
part 'popular_items_event.dart';
part 'popular_items_state.dart';

class PopularItemsBloc extends Bloc<PopularItemsEvent, PopularItemsState> {
  PopularItemsBloc(PopularItemsState initialState) : super(initialState) {
    on<PopularItemsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PopularItemsInitialEvent event,
    Emitter<PopularItemsState> emit,
  ) async {
    emit(state.copyWith(
        popularItemsModelObj: state.popularItemsModelObj
            ?.copyWith(popularitemsItemList: fillPopularitemsItemList())));
  }

  List<PopularitemsItemModel> fillPopularitemsItemList() {
    return List.generate(4, (index) => PopularitemsItemModel());
  }
}
