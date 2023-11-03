// ignore_for_file: must_be_immutable

part of 'write_a_review_bloc.dart';

class WriteAReviewState extends Equatable {
  WriteAReviewState({
    this.group1367Controller,
    this.writeAReviewModelObj,
  });

  TextEditingController? group1367Controller;

  WriteAReviewModel? writeAReviewModelObj;

  @override
  List<Object?> get props => [
        group1367Controller,
        writeAReviewModelObj,
      ];
  WriteAReviewState copyWith({
    TextEditingController? group1367Controller,
    WriteAReviewModel? writeAReviewModelObj,
  }) {
    return WriteAReviewState(
      group1367Controller: group1367Controller ?? this.group1367Controller,
      writeAReviewModelObj: writeAReviewModelObj ?? this.writeAReviewModelObj,
    );
  }
}
