import 'package:equatable/equatable.dart';
import 'popularitems_item_model.dart';

// ignore: must_be_immutable
class PopularItemsModel extends Equatable {
  PopularItemsModel({this.popularitemsItemList = const []});

  List<PopularitemsItemModel> popularitemsItemList;

  PopularItemsModel copyWith(
      {List<PopularitemsItemModel>? popularitemsItemList}) {
    return PopularItemsModel(
      popularitemsItemList: popularitemsItemList ?? this.popularitemsItemList,
    );
  }

  @override
  List<Object?> get props => [popularitemsItemList];
}
