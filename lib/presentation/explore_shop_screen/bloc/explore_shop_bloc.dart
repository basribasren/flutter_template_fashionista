import '../models/chipviewgroup1315_item_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chipviewgroup1315_item_model.dart';
import 'package:basri_s_application22/presentation/explore_shop_screen/models/explore_shop_model.dart';
part 'explore_shop_event.dart';
part 'explore_shop_state.dart';

class ExploreShopBloc extends Bloc<ExploreShopEvent, ExploreShopState> {
  ExploreShopBloc(ExploreShopState initialState) : super(initialState) {
    on<ExploreShopInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    ExploreShopInitialEvent event,
    Emitter<ExploreShopState> emit,
  ) async {
    emit(state.copyWith(
        exploreShopModelObj: state.exploreShopModelObj?.copyWith(
            chipviewgroup1315ItemList: fillChipviewgroup1315ItemList())));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ExploreShopState> emit,
  ) {
    List<Chipviewgroup1315ItemModel> newList =
        List<Chipviewgroup1315ItemModel>.from(
            state.exploreShopModelObj!.chipviewgroup1315ItemList);
    newList[event.index] =
        newList[event.index].copyWith(isSelected: event.isSelected);
    emit(state.copyWith(
        exploreShopModelObj: state.exploreShopModelObj
            ?.copyWith(chipviewgroup1315ItemList: newList)));
  }

  List<Chipviewgroup1315ItemModel> fillChipviewgroup1315ItemList() {
    return List.generate(21, (index) => Chipviewgroup1315ItemModel());
  }
}
