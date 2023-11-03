import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/orderstatus_item_model.dart';
import 'package:basri_s_application22/presentation/order_status_screen/models/order_status_model.dart';
part 'order_status_event.dart';
part 'order_status_state.dart';

class OrderStatusBloc extends Bloc<OrderStatusEvent, OrderStatusState> {
  OrderStatusBloc(OrderStatusState initialState) : super(initialState) {
    on<OrderStatusInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OrderStatusInitialEvent event,
    Emitter<OrderStatusState> emit,
  ) async {
    emit(state.copyWith(
        orderStatusModelObj: state.orderStatusModelObj
            ?.copyWith(orderstatusItemList: fillOrderstatusItemList())));
  }

  List<OrderstatusItemModel> fillOrderstatusItemList() {
    return List.generate(3, (index) => OrderstatusItemModel());
  }
}
