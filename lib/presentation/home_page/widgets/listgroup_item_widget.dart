import '../models/listgroup_item_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListgroupItemWidget extends StatelessWidget {
  ListgroupItemWidget(this.listgroupItemModelObj);

  ListgroupItemModel listgroupItemModelObj;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        width: getHorizontalSize(
          55,
        ),
        margin: getMargin(
          right: 16,
        ),
        padding: getPadding(
          left: 19,
          top: 5,
          right: 19,
          bottom: 5,
        ),
        decoration: AppDecoration.txtOutlineGray20002.copyWith(
          borderRadius: BorderRadiusStyle.txtRoundedBorder7,
        ),
        child: Text(
          listgroupItemModelObj.groupTxt,
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.left,
          style: AppStyle.txtPoppinsRegular14Black900,
        ),
      ),
    );
  }
}
