// ignore_for_file: must_be_immutable

part of 'product_view_bloc.dart';

@immutable
abstract class ProductViewEvent extends Equatable {}

class ProductViewInitialEvent extends ProductViewEvent {
  @override
  List<Object?> get props => [];
}
