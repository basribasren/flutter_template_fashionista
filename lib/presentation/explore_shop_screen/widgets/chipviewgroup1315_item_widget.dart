import '../models/chipviewgroup1315_item_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Chipviewgroup1315ItemWidget extends StatelessWidget {
  Chipviewgroup1315ItemWidget(this.chipviewgroup1315ItemModelObj,
      {this.onSelectedChipView});

  Chipviewgroup1315ItemModel chipviewgroup1315ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: getPadding(
        left: 15,
        right: 15,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        chipviewgroup1315ItemModelObj.group1315Txt,
        textAlign: TextAlign.left,
        style: TextStyle(
          color: chipviewgroup1315ItemModelObj.isSelected
              ? ColorConstant.gray200
              : ColorConstant.black900,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: chipviewgroup1315ItemModelObj.isSelected,
      backgroundColor: ColorConstant.gray200,
      selectedColor: ColorConstant.black900,
      shape: chipviewgroup1315ItemModelObj.isSelected
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  18,
                ),
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                getHorizontalSize(
                  18,
                ),
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
