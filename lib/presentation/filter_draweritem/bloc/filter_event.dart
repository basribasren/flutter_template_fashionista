// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

@immutable
abstract class FilterEvent extends Equatable {}

class FilterInitialEvent extends FilterEvent {
  @override
  List<Object?> get props => [];
}
