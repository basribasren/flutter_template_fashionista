// ignore_for_file: must_be_immutable

part of 'checkout_bloc.dart';

@immutable
abstract class CheckoutEvent extends Equatable {}

class CheckoutInitialEvent extends CheckoutEvent {
  @override
  List<Object?> get props => [];
}
