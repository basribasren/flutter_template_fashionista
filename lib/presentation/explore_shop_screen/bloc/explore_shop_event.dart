// ignore_for_file: must_be_immutable

part of 'explore_shop_bloc.dart';

@immutable
abstract class ExploreShopEvent extends Equatable {}

class ExploreShopInitialEvent extends ExploreShopEvent {
  @override
  List<Object?> get props => [];
}

///event for change ChipView selection
class UpdateChipViewEvent extends ExploreShopEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
