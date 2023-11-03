// ignore_for_file: must_be_immutable

part of 'order_status_bloc.dart';

@immutable
abstract class OrderStatusEvent extends Equatable {}

class OrderStatusInitialEvent extends OrderStatusEvent {
  @override
  List<Object?> get props => [];
}
