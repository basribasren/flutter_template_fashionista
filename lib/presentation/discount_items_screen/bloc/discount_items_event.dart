// ignore_for_file: must_be_immutable

part of 'discount_items_bloc.dart';

@immutable
abstract class DiscountItemsEvent extends Equatable {}

class DiscountItemsInitialEvent extends DiscountItemsEvent {
  @override
  List<Object?> get props => [];
}
