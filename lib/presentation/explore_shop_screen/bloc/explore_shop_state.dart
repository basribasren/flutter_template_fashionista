// ignore_for_file: must_be_immutable

part of 'explore_shop_bloc.dart';

class ExploreShopState extends Equatable {
  ExploreShopState({this.exploreShopModelObj});

  ExploreShopModel? exploreShopModelObj;

  @override
  List<Object?> get props => [
        exploreShopModelObj,
      ];
  ExploreShopState copyWith({ExploreShopModel? exploreShopModelObj}) {
    return ExploreShopState(
      exploreShopModelObj: exploreShopModelObj ?? this.exploreShopModelObj,
    );
  }
}
