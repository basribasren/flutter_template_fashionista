import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/discountitems_item_model.dart';
import 'package:basri_s_application22/presentation/discount_items_screen/models/discount_items_model.dart';
part 'discount_items_event.dart';
part 'discount_items_state.dart';

class DiscountItemsBloc extends Bloc<DiscountItemsEvent, DiscountItemsState> {
  DiscountItemsBloc(DiscountItemsState initialState) : super(initialState) {
    on<DiscountItemsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DiscountItemsInitialEvent event,
    Emitter<DiscountItemsState> emit,
  ) async {
    emit(state.copyWith(
        discountItemsModelObj: state.discountItemsModelObj
            ?.copyWith(discountitemsItemList: fillDiscountitemsItemList())));
  }

  List<DiscountitemsItemModel> fillDiscountitemsItemList() {
    return List.generate(5, (index) => DiscountitemsItemModel());
  }
}
