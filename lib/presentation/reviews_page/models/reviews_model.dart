import 'package:equatable/equatable.dart';
import 'listrating_item_model.dart';
import 'listdatatype_item_model.dart';

// ignore: must_be_immutable
class ReviewsModel extends Equatable {
  ReviewsModel(
      {this.listratingItemList = const [],
      this.listdatatypeItemList = const []});

  List<ListratingItemModel> listratingItemList;

  List<ListdatatypeItemModel> listdatatypeItemList;

  ReviewsModel copyWith(
      {List<ListratingItemModel>? listratingItemList,
      List<ListdatatypeItemModel>? listdatatypeItemList}) {
    return ReviewsModel(
      listratingItemList: listratingItemList ?? this.listratingItemList,
      listdatatypeItemList: listdatatypeItemList ?? this.listdatatypeItemList,
    );
  }

  @override
  List<Object?> get props => [listratingItemList, listdatatypeItemList];
}
