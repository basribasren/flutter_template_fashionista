// ignore_for_file: must_be_immutable

part of 'write_a_review_bloc.dart';

@immutable
abstract class WriteAReviewEvent extends Equatable {}

class WriteAReviewInitialEvent extends WriteAReviewEvent {
  @override
  List<Object?> get props => [];
}
