import 'package:equatable/equatable.dart';
import 'checkout_item_model.dart';

// ignore: must_be_immutable
class CheckoutModel extends Equatable {
  CheckoutModel({this.checkoutItemList = const []});

  List<CheckoutItemModel> checkoutItemList;

  CheckoutModel copyWith({List<CheckoutItemModel>? checkoutItemList}) {
    return CheckoutModel(
      checkoutItemList: checkoutItemList ?? this.checkoutItemList,
    );
  }

  @override
  List<Object?> get props => [checkoutItemList];
}
