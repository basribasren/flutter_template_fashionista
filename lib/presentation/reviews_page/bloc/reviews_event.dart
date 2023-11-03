// ignore_for_file: must_be_immutable

part of 'reviews_bloc.dart';

@immutable
abstract class ReviewsEvent extends Equatable {}

class ReviewsInitialEvent extends ReviewsEvent {
  @override
  List<Object?> get props => [];
}
