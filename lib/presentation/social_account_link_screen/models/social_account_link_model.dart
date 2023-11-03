import 'package:equatable/equatable.dart';
import 'listfacebook_item_model.dart';

// ignore: must_be_immutable
class SocialAccountLinkModel extends Equatable {
  SocialAccountLinkModel({this.listfacebookItemList = const []});

  List<ListfacebookItemModel> listfacebookItemList;

  SocialAccountLinkModel copyWith(
      {List<ListfacebookItemModel>? listfacebookItemList}) {
    return SocialAccountLinkModel(
      listfacebookItemList: listfacebookItemList ?? this.listfacebookItemList,
    );
  }

  @override
  List<Object?> get props => [listfacebookItemList];
}
