// ignore_for_file: must_be_immutable

part of 'reviews_bloc.dart';

class ReviewsState extends Equatable {
  ReviewsState({this.reviewsModelObj});

  ReviewsModel? reviewsModelObj;

  @override
  List<Object?> get props => [
        reviewsModelObj,
      ];
  ReviewsState copyWith({ReviewsModel? reviewsModelObj}) {
    return ReviewsState(
      reviewsModelObj: reviewsModelObj ?? this.reviewsModelObj,
    );
  }
}
