// ignore_for_file: must_be_immutable

part of 'reviews_tab_container_bloc.dart';

@immutable
abstract class ReviewsTabContainerEvent extends Equatable {}

class ReviewsTabContainerInitialEvent extends ReviewsTabContainerEvent {
  @override
  List<Object?> get props => [];
}
