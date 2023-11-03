import 'package:equatable/equatable.dart';
import 'orderstatus_item_model.dart';

// ignore: must_be_immutable
class OrderStatusModel extends Equatable {
  OrderStatusModel({this.orderstatusItemList = const []});

  List<OrderstatusItemModel> orderstatusItemList;

  OrderStatusModel copyWith({List<OrderstatusItemModel>? orderstatusItemList}) {
    return OrderStatusModel(
      orderstatusItemList: orderstatusItemList ?? this.orderstatusItemList,
    );
  }

  @override
  List<Object?> get props => [orderstatusItemList];
}
