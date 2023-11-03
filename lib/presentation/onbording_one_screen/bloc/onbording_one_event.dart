// ignore_for_file: must_be_immutable

part of 'onbording_one_bloc.dart';

@immutable
abstract class OnbordingOneEvent extends Equatable {}

class OnbordingOneInitialEvent extends OnbordingOneEvent {
  @override
  List<Object?> get props => [];
}
