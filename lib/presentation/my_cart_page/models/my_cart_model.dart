import 'package:equatable/equatable.dart';
import 'mycart_item_model.dart';

// ignore: must_be_immutable
class MyCartModel extends Equatable {
  MyCartModel({this.mycartItemList = const []});

  List<MycartItemModel> mycartItemList;

  MyCartModel copyWith({List<MycartItemModel>? mycartItemList}) {
    return MyCartModel(
      mycartItemList: mycartItemList ?? this.mycartItemList,
    );
  }

  @override
  List<Object?> get props => [mycartItemList];
}
