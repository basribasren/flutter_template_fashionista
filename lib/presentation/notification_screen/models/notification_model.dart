import 'package:equatable/equatable.dart';
import 'listtime_item_model.dart';
import 'listtime1_item_model.dart';

// ignore: must_be_immutable
class NotificationModel extends Equatable {
  NotificationModel(
      {this.listtimeItemList = const [], this.listtime1ItemList = const []});

  List<ListtimeItemModel> listtimeItemList;

  List<Listtime1ItemModel> listtime1ItemList;

  NotificationModel copyWith(
      {List<ListtimeItemModel>? listtimeItemList,
      List<Listtime1ItemModel>? listtime1ItemList}) {
    return NotificationModel(
      listtimeItemList: listtimeItemList ?? this.listtimeItemList,
      listtime1ItemList: listtime1ItemList ?? this.listtime1ItemList,
    );
  }

  @override
  List<Object?> get props => [listtimeItemList, listtime1ItemList];
}
