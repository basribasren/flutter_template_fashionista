// ignore_for_file: must_be_immutable

part of 'information_bloc.dart';

@immutable
abstract class InformationEvent extends Equatable {}

class InformationInitialEvent extends InformationEvent {
  @override
  List<Object?> get props => [];
}
