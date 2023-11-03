import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/mycart_item_model.dart';
import 'package:basri_s_application22/presentation/my_cart_page/models/my_cart_model.dart';
part 'my_cart_event.dart';
part 'my_cart_state.dart';

class MyCartBloc extends Bloc<MyCartEvent, MyCartState> {
  MyCartBloc(MyCartState initialState) : super(initialState) {
    on<MyCartInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyCartInitialEvent event,
    Emitter<MyCartState> emit,
  ) async {
    emit(state.copyWith(
        myCartModelObj: state.myCartModelObj
            ?.copyWith(mycartItemList: fillMycartItemList())));
  }

  List<MycartItemModel> fillMycartItemList() {
    return List.generate(2, (index) => MycartItemModel());
  }
}
