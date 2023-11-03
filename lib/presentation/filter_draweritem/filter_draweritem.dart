import 'bloc/filter_bloc.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/custom_button.dart';
import 'package:basri_s_application22/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FilterDraweritem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
            width: getHorizontalSize(303),
            padding: getPadding(left: 3, right: 3, bottom: 3),
            decoration: AppDecoration.fillWhiteA700,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                      padding: getPadding(left: 13, top: 42),
                      child: Text("lbl_category".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular16)),
                  CustomButton(
                      height: getVerticalSize(31),
                      width: getHorizontalSize(83),
                      text: "lbl_consilor".tr,
                      margin: getMargin(left: 13, top: 4),
                      variant: ButtonVariant.FillGray10001,
                      shape: ButtonShape.RoundedBorder7,
                      padding: ButtonPadding.PaddingAll4,
                      fontStyle: ButtonFontStyle.PoppinsRegular14Gray500),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 10),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray10001,
                              indent: getHorizontalSize(13),
                              endIndent: getHorizontalSize(12)))),
                  Padding(
                      padding: getPadding(left: 13, top: 9),
                      child: Text("", overflow: TextOverflow.ellipsis)),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 13, top: 10, right: 12),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(83),
                                    text: "lbl_la_girl".tr,
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle: ButtonFontStyle
                                        .PoppinsRegular14Gray500),
                                CustomButton(
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(94),
                                    text: "lbl_pinkflash".tr,
                                    margin: getMargin(left: 10),
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle: ButtonFontStyle
                                        .PoppinsRegular14Gray500),
                                Container(
                                    width: getHorizontalSize(75),
                                    margin: getMargin(left: 10),
                                    padding: getPadding(
                                        left: 12, top: 2, right: 12, bottom: 2),
                                    child: Text("lbl_imagic".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Gray500))
                              ]))),
                  Padding(
                      padding: getPadding(left: 13, top: 6),
                      child: Row(children: [
                        CustomButton(
                            height: getVerticalSize(31),
                            width: getHorizontalSize(83),
                            text: "lbl_l_a_girl2".tr,
                            variant: ButtonVariant.FillGray10001,
                            shape: ButtonShape.RoundedBorder7,
                            padding: ButtonPadding.PaddingAll4,
                            fontStyle: ButtonFontStyle.PoppinsRegular14Gray500),
                        CustomButton(
                            height: getVerticalSize(31),
                            width: getHorizontalSize(94),
                            text: "lbl_focallure".tr,
                            margin: getMargin(left: 10),
                            variant: ButtonVariant.FillGray10001,
                            shape: ButtonShape.RoundedBorder7,
                            padding: ButtonPadding.PaddingAll4,
                            fontStyle: ButtonFontStyle.PoppinsRegular14Gray500)
                      ])),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 10),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray10001,
                              indent: getHorizontalSize(13),
                              endIndent: getHorizontalSize(12)))),
                  Padding(
                      padding: getPadding(left: 13, top: 5),
                      child: Text("lbl_service".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular16)),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 13, top: 13, right: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(114),
                                    text: "lbl_installment".tr,
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle: ButtonFontStyle
                                        .PoppinsRegular14Gray500),
                                CustomButton(
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(145),
                                    text: "msg_cash_on_deliver".tr,
                                    margin: getMargin(left: 10),
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle:
                                        ButtonFontStyle.PoppinsRegular14Gray500)
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 13, top: 10, right: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(31),
                                    width: getHorizontalSize(143),
                                    text: "msg_fulfilled_by_ap".tr,
                                    variant: ButtonVariant.FillGray10001,
                                    shape: ButtonShape.RoundedBorder7,
                                    padding: ButtonPadding.PaddingAll4,
                                    fontStyle: ButtonFontStyle
                                        .PoppinsRegular14Gray500),
                                Container(
                                    width: getHorizontalSize(117),
                                    margin: getMargin(left: 9),
                                    padding: getPadding(
                                        left: 8, top: 2, right: 8, bottom: 2),
                                    decoration: AppDecoration.txtFillGray10001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .txtRoundedBorder7),
                                    child: Text("lbl_free_shipping".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Gray500))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 15),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray10001,
                              indent: getHorizontalSize(13),
                              endIndent: getHorizontalSize(12)))),
                  Padding(
                      padding: getPadding(left: 13, top: 25),
                      child: Text("lbl_location".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular16)),
                  Padding(
                      padding: getPadding(left: 13, top: 12),
                      child: Row(children: [
                        CustomButton(
                            height: getVerticalSize(31),
                            width: getHorizontalSize(83),
                            text: "lbl_china".tr,
                            variant: ButtonVariant.FillGray10001,
                            shape: ButtonShape.RoundedBorder7,
                            padding: ButtonPadding.PaddingAll4,
                            fontStyle: ButtonFontStyle.PoppinsRegular14Gray500),
                        CustomButton(
                            height: getVerticalSize(31),
                            width: getHorizontalSize(108),
                            text: "lbl_bangladesh".tr,
                            margin: getMargin(left: 10),
                            variant: ButtonVariant.FillGray10001,
                            shape: ButtonShape.RoundedBorder7,
                            padding: ButtonPadding.PaddingAll4,
                            fontStyle: ButtonFontStyle.PoppinsRegular14Gray500)
                      ])),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 20),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray10001,
                              indent: getHorizontalSize(13),
                              endIndent: getHorizontalSize(12)))),
                  Padding(
                      padding: getPadding(left: 13, top: 15),
                      child: Text("lbl_price".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular16)),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(left: 13, top: 12, right: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                BlocSelector<FilterBloc, FilterState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.group848Controller,
                                    builder: (context, group848Controller) {
                                      return CustomTextFormField(
                                          width: getHorizontalSize(108),
                                          focusNode: FocusNode(),
                                          controller: group848Controller,
                                          hintText: "lbl_min".tr,
                                          variant: TextFormFieldVariant
                                              .OutlineGray10001,
                                          shape:
                                              TextFormFieldShape.RoundedBorder5,
                                          padding:
                                              TextFormFieldPadding.PaddingAll4,
                                          fontStyle: TextFormFieldFontStyle
                                              .PoppinsRegular14Gray500);
                                    }),
                                Padding(
                                    padding: getPadding(top: 3, bottom: 3),
                                    child: Text("lbl".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular16)),
                                BlocSelector<FilterBloc, FilterState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.group847Controller,
                                    builder: (context, group847Controller) {
                                      return CustomTextFormField(
                                          width: getHorizontalSize(108),
                                          focusNode: FocusNode(),
                                          controller: group847Controller,
                                          hintText: "lbl_max".tr,
                                          variant: TextFormFieldVariant
                                              .OutlineGray10001,
                                          shape:
                                              TextFormFieldShape.RoundedBorder5,
                                          padding:
                                              TextFormFieldPadding.PaddingAll4,
                                          fontStyle: TextFormFieldFontStyle
                                              .PoppinsRegular14Gray500,
                                          textInputAction:
                                              TextInputAction.done);
                                    })
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: getPadding(top: 20),
                          child: Divider(
                              height: getVerticalSize(1),
                              thickness: getVerticalSize(1),
                              color: ColorConstant.gray10001,
                              indent: getHorizontalSize(13),
                              endIndent: getHorizontalSize(12)))),
                  Padding(
                      padding: getPadding(left: 13, top: 18),
                      child: Text("lbl_rating".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsRegular16)),
                  Padding(
                      padding: getPadding(left: 11, top: 7),
                      child: RatingBar.builder(
                          initialRating: 5,
                          minRating: 0,
                          direction: Axis.horizontal,
                          allowHalfRating: false,
                          itemSize: getVerticalSize(22),
                          itemCount: 5,
                          updateOnDrag: true,
                          onRatingUpdate: (rating) {},
                          itemBuilder: (context, _) {
                            return Icon(Icons.star,
                                color: ColorConstant.gray10001);
                          })),
                  Padding(
                      padding: getPadding(top: 62),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CustomButton(
                                height: getVerticalSize(53),
                                width: getHorizontalSize(143),
                                text: "lbl_reset".tr,
                                variant: ButtonVariant.FillGray200,
                                shape: ButtonShape.Square,
                                fontStyle:
                                    ButtonFontStyle.PoppinsMedium15Black900),
                            CustomButton(
                                height: getVerticalSize(53),
                                width: getHorizontalSize(152),
                                text: "lbl_complete".tr,
                                shape: ButtonShape.Square,
                                fontStyle:
                                    ButtonFontStyle.PoppinsMedium15WhiteA700_1,
                                onTap: () {
                                  onTapComplete(context);
                                })
                          ]))
                ])));
  }

  onTapComplete(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.popularItemsScreen,
    );
  }
}
