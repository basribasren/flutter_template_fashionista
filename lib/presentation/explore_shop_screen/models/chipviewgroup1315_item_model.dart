import 'package:equatable/equatable.dart';

// ignore: must_be_immutable
class Chipviewgroup1315ItemModel extends Equatable {
  Chipviewgroup1315ItemModel(
      {this.group1315Txt = "Electonics", this.isSelected = false});

  String group1315Txt;

  bool isSelected;

  Chipviewgroup1315ItemModel copyWith(
      {String? group1315Txt, bool? isSelected}) {
    return Chipviewgroup1315ItemModel(
      group1315Txt: group1315Txt ?? this.group1315Txt,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [group1315Txt, isSelected];
}
