import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:basri_s_application22/presentation/tracking_order_screen/models/tracking_order_model.dart';
part 'tracking_order_event.dart';
part 'tracking_order_state.dart';

class TrackingOrderBloc extends Bloc<TrackingOrderEvent, TrackingOrderState> {
  TrackingOrderBloc(TrackingOrderState initialState) : super(initialState) {
    on<TrackingOrderInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrackingOrderInitialEvent event,
    Emitter<TrackingOrderState> emit,
  ) async {}
}
