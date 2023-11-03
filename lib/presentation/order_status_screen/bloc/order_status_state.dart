// ignore_for_file: must_be_immutable

part of 'order_status_bloc.dart';

class OrderStatusState extends Equatable {
  OrderStatusState({this.orderStatusModelObj});

  OrderStatusModel? orderStatusModelObj;

  @override
  List<Object?> get props => [
        orderStatusModelObj,
      ];
  OrderStatusState copyWith({OrderStatusModel? orderStatusModelObj}) {
    return OrderStatusState(
      orderStatusModelObj: orderStatusModelObj ?? this.orderStatusModelObj,
    );
  }
}
