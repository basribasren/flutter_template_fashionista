// ignore_for_file: must_be_immutable

part of 'filter_bloc.dart';

class FilterState extends Equatable {
  FilterState({
    this.group848Controller,
    this.group847Controller,
    this.filterModelObj,
  });

  TextEditingController? group848Controller;

  TextEditingController? group847Controller;

  FilterModel? filterModelObj;

  @override
  List<Object?> get props => [
        group848Controller,
        group847Controller,
        filterModelObj,
      ];
  FilterState copyWith({
    TextEditingController? group848Controller,
    TextEditingController? group847Controller,
    FilterModel? filterModelObj,
  }) {
    return FilterState(
      group848Controller: group848Controller ?? this.group848Controller,
      group847Controller: group847Controller ?? this.group847Controller,
      filterModelObj: filterModelObj ?? this.filterModelObj,
    );
  }
}
