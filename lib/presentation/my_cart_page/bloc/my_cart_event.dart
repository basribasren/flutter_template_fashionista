// ignore_for_file: must_be_immutable

part of 'my_cart_bloc.dart';

@immutable
abstract class MyCartEvent extends Equatable {}

class MyCartInitialEvent extends MyCartEvent {
  @override
  List<Object?> get props => [];
}
