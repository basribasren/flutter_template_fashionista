import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/listgroup_item_model.dart';
import '../models/listunsplashemlkhdeydhg_item_model.dart';
import '../models/listunsplashzhh3wm2ko3s_item_model.dart';
import 'package:basri_s_application22/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            listgroupItemList: fillListgroupItemList(),
            listunsplashemlkhdeydhgItemList:
                fillListunsplashemlkhdeydhgItemList(),
            listunsplashzhh3wm2ko3sItemList:
                fillListunsplashzhh3wm2ko3sItemList())));
  }

  List<ListgroupItemModel> fillListgroupItemList() {
    return List.generate(5, (index) => ListgroupItemModel());
  }

  List<ListunsplashemlkhdeydhgItemModel> fillListunsplashemlkhdeydhgItemList() {
    return List.generate(3, (index) => ListunsplashemlkhdeydhgItemModel());
  }

  List<Listunsplashzhh3wm2ko3sItemModel> fillListunsplashzhh3wm2ko3sItemList() {
    return List.generate(3, (index) => Listunsplashzhh3wm2ko3sItemModel());
  }
}
