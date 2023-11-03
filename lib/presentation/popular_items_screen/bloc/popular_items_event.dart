// ignore_for_file: must_be_immutable

part of 'popular_items_bloc.dart';

@immutable
abstract class PopularItemsEvent extends Equatable {}

class PopularItemsInitialEvent extends PopularItemsEvent {
  @override
  List<Object?> get props => [];
}
