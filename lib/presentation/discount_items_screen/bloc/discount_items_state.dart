// ignore_for_file: must_be_immutable

part of 'discount_items_bloc.dart';

class DiscountItemsState extends Equatable {
  DiscountItemsState({this.discountItemsModelObj});

  DiscountItemsModel? discountItemsModelObj;

  @override
  List<Object?> get props => [
        discountItemsModelObj,
      ];
  DiscountItemsState copyWith({DiscountItemsModel? discountItemsModelObj}) {
    return DiscountItemsState(
      discountItemsModelObj:
          discountItemsModelObj ?? this.discountItemsModelObj,
    );
  }
}
