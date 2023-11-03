import 'package:equatable/equatable.dart';
import 'chipviewgroup1315_item_model.dart';

// ignore: must_be_immutable
class ExploreShopModel extends Equatable {
  ExploreShopModel({this.chipviewgroup1315ItemList = const []});

  List<Chipviewgroup1315ItemModel> chipviewgroup1315ItemList;

  ExploreShopModel copyWith(
      {List<Chipviewgroup1315ItemModel>? chipviewgroup1315ItemList}) {
    return ExploreShopModel(
      chipviewgroup1315ItemList:
          chipviewgroup1315ItemList ?? this.chipviewgroup1315ItemList,
    );
  }

  @override
  List<Object?> get props => [chipviewgroup1315ItemList];
}
