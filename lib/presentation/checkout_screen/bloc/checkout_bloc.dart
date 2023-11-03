import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/checkout_item_model.dart';
import 'package:basri_s_application22/presentation/checkout_screen/models/checkout_model.dart';
part 'checkout_event.dart';
part 'checkout_state.dart';

class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  CheckoutBloc(CheckoutState initialState) : super(initialState) {
    on<CheckoutInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CheckoutInitialEvent event,
    Emitter<CheckoutState> emit,
  ) async {
    emit(state.copyWith(
        checkoutModelObj: state.checkoutModelObj
            ?.copyWith(checkoutItemList: fillCheckoutItemList())));
  }

  List<CheckoutItemModel> fillCheckoutItemList() {
    return List.generate(4, (index) => CheckoutItemModel());
  }
}
