import 'package:equatable/equatable.dart';
import 'listgroup_item_model.dart';
import 'listunsplashemlkhdeydhg_item_model.dart';
import 'listunsplashzhh3wm2ko3s_item_model.dart';

// ignore: must_be_immutable
class HomeModel extends Equatable {
  HomeModel(
      {this.listgroupItemList = const [],
      this.listunsplashemlkhdeydhgItemList = const [],
      this.listunsplashzhh3wm2ko3sItemList = const []});

  List<ListgroupItemModel> listgroupItemList;

  List<ListunsplashemlkhdeydhgItemModel> listunsplashemlkhdeydhgItemList;

  List<Listunsplashzhh3wm2ko3sItemModel> listunsplashzhh3wm2ko3sItemList;

  HomeModel copyWith(
      {List<ListgroupItemModel>? listgroupItemList,
      List<ListunsplashemlkhdeydhgItemModel>? listunsplashemlkhdeydhgItemList,
      List<Listunsplashzhh3wm2ko3sItemModel>?
          listunsplashzhh3wm2ko3sItemList}) {
    return HomeModel(
      listgroupItemList: listgroupItemList ?? this.listgroupItemList,
      listunsplashemlkhdeydhgItemList: listunsplashemlkhdeydhgItemList ??
          this.listunsplashemlkhdeydhgItemList,
      listunsplashzhh3wm2ko3sItemList: listunsplashzhh3wm2ko3sItemList ??
          this.listunsplashzhh3wm2ko3sItemList,
    );
  }

  @override
  List<Object?> get props => [
        listgroupItemList,
        listunsplashemlkhdeydhgItemList,
        listunsplashzhh3wm2ko3sItemList
      ];
}
