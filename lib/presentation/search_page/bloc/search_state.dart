// ignore_for_file: must_be_immutable

part of 'search_bloc.dart';

class SearchState extends Equatable {
  SearchState({
    this.group1305Controller,
    this.searchModelObj,
  });

  TextEditingController? group1305Controller;

  SearchModel? searchModelObj;

  @override
  List<Object?> get props => [
        group1305Controller,
        searchModelObj,
      ];
  SearchState copyWith({
    TextEditingController? group1305Controller,
    SearchModel? searchModelObj,
  }) {
    return SearchState(
      group1305Controller: group1305Controller ?? this.group1305Controller,
      searchModelObj: searchModelObj ?? this.searchModelObj,
    );
  }
}
