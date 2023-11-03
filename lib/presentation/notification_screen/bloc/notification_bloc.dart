import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listtime_item_model.dart';
import '../models/listtime1_item_model.dart';
import 'package:basri_s_application22/presentation/notification_screen/models/notification_model.dart';
part 'notification_event.dart';
part 'notification_state.dart';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc(NotificationState initialState) : super(initialState) {
    on<NotificationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationInitialEvent event,
    Emitter<NotificationState> emit,
  ) async {
    emit(state.copyWith(
        notificationModelObj: state.notificationModelObj?.copyWith(
            listtimeItemList: fillListtimeItemList(),
            listtime1ItemList: fillListtime1ItemList())));
  }

  List<ListtimeItemModel> fillListtimeItemList() {
    return List.generate(3, (index) => ListtimeItemModel());
  }

  List<Listtime1ItemModel> fillListtime1ItemList() {
    return List.generate(3, (index) => Listtime1ItemModel());
  }
}
