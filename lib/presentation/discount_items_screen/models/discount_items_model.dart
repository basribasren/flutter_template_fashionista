import 'package:equatable/equatable.dart';
import 'discountitems_item_model.dart';

// ignore: must_be_immutable
class DiscountItemsModel extends Equatable {
  DiscountItemsModel({this.discountitemsItemList = const []});

  List<DiscountitemsItemModel> discountitemsItemList;

  DiscountItemsModel copyWith(
      {List<DiscountitemsItemModel>? discountitemsItemList}) {
    return DiscountItemsModel(
      discountitemsItemList:
          discountitemsItemList ?? this.discountitemsItemList,
    );
  }

  @override
  List<Object?> get props => [discountitemsItemList];
}
