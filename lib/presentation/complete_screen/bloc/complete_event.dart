// ignore_for_file: must_be_immutable

part of 'complete_bloc.dart';

@immutable
abstract class CompleteEvent extends Equatable {}

class CompleteInitialEvent extends CompleteEvent {
  @override
  List<Object?> get props => [];
}
