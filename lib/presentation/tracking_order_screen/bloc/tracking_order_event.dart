// ignore_for_file: must_be_immutable

part of 'tracking_order_bloc.dart';

@immutable
abstract class TrackingOrderEvent extends Equatable {}

class TrackingOrderInitialEvent extends TrackingOrderEvent {
  @override
  List<Object?> get props => [];
}
