// ignore_for_file: must_be_immutable

part of 'information_bloc.dart';

class InformationState extends Equatable {
  InformationState({
    this.groupController,
    this.dateController,
    this.countryController,
    this.groupOneController,
    this.id,
    this.informationModelObj,
  });

  TextEditingController? groupController;

  TextEditingController? dateController;

  TextEditingController? countryController;

  TextEditingController? groupOneController;

  InformationModel? informationModelObj;

  var id;

  @override
  List<Object?> get props => [
        groupController,
        dateController,
        countryController,
        groupOneController,
        id,
        informationModelObj,
      ];
  InformationState copyWith({
    TextEditingController? groupController,
    TextEditingController? dateController,
    TextEditingController? countryController,
    TextEditingController? groupOneController,
    var id,
    InformationModel? informationModelObj,
  }) {
    return InformationState(
      groupController: groupController ?? this.groupController,
      dateController: dateController ?? this.dateController,
      countryController: countryController ?? this.countryController,
      groupOneController: groupOneController ?? this.groupOneController,
      id: id ?? this.id,
      informationModelObj: informationModelObj ?? this.informationModelObj,
    );
  }
}
