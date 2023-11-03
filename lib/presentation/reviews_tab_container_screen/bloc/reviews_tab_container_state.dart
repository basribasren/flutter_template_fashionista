// ignore_for_file: must_be_immutable

part of 'reviews_tab_container_bloc.dart';

class ReviewsTabContainerState extends Equatable {
  ReviewsTabContainerState({this.reviewsTabContainerModelObj});

  ReviewsTabContainerModel? reviewsTabContainerModelObj;

  @override
  List<Object?> get props => [
        reviewsTabContainerModelObj,
      ];
  ReviewsTabContainerState copyWith(
      {ReviewsTabContainerModel? reviewsTabContainerModelObj}) {
    return ReviewsTabContainerState(
      reviewsTabContainerModelObj:
          reviewsTabContainerModelObj ?? this.reviewsTabContainerModelObj,
    );
  }
}
