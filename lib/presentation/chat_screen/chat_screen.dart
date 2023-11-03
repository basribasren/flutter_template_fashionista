import 'bloc/chat_bloc.dart';
import 'models/chat_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application22/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ChatBloc>(
        create: (context) => ChatBloc(ChatState(chatModelObj: ChatModel()))
          ..add(ChatInitialEvent()),
        child: ChatScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(49),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 5, bottom: 4),
                    onTap: () {
                      onTapArrowleft19(context);
                    }),
                title: Padding(
                    padding: getPadding(left: 43),
                    child: Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgEllipse6540x40,
                          height: getSize(40),
                          width: getSize(40),
                          radius: BorderRadius.circular(getHorizontalSize(20)),
                          margin: getMargin(top: 4, bottom: 2)),
                      Padding(
                          padding: getPadding(left: 14),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text("lbl_mahbuba".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular18Black900)),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(right: 39),
                                        child: Text("lbl_online".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsRegular15Green600)))
                              ]))
                    ])),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgCall,
                      margin: getMargin(left: 16, top: 13, right: 12)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgVideocamera,
                      margin: getMargin(left: 24, top: 13, right: 28))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 21, right: 16, bottom: 21),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_yesterday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular10)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse6540x40,
                                    height: getSize(40),
                                    width: getSize(40),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    margin: getMargin(top: 33, bottom: 22)),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(287),
                                          padding: getPadding(
                                              left: 16,
                                              top: 13,
                                              right: 16,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .txtFillGray10001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtCustomBorderTL30),
                                          child: Text("msg_hi_anne_i_am_f".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Gray500)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray500))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          padding: getPadding(
                                              left: 32,
                                              top: 19,
                                              right: 32,
                                              bottom: 19),
                                          decoration: AppDecoration.fillGray600
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL301),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgGroup230,
                                                    height: getVerticalSize(35),
                                                    width:
                                                        getHorizontalSize(181)),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 7,
                                                        top: 6,
                                                        bottom: 6),
                                                    child: Text("lbl_0_37".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtNunitoRegular16))
                                              ])),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtNunitoRegular12))
                                    ]),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse66,
                                    height: getSize(40),
                                    width: getSize(40),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    margin: getMargin(top: 33, bottom: 22))
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse6540x40,
                                    height: getSize(40),
                                    width: getSize(40),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    margin: getMargin(top: 33, bottom: 22)),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(280),
                                          padding: getPadding(
                                              left: 10,
                                              top: 13,
                                              right: 10,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .txtFillGray10001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtCustomBorderTL30),
                                          child: Text("msg_hi_anne_i_am_f".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Gray500)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray500))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(287),
                                          padding: getPadding(
                                              left: 26,
                                              top: 13,
                                              right: 26,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .txtFillGray600
                                              .copyWith(
                                                  borderRadius: BorderRadiusStyle
                                                      .txtCustomBorderTL301),
                                          child: Text("msg_hi_don_t_worry".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14)),
                                      Padding(
                                          padding: getPadding(top: 5),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style:
                                                  AppStyle.txtNunitoRegular12))
                                    ]),
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse66,
                                    height: getSize(40),
                                    width: getSize(40),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    margin: getMargin(top: 33, bottom: 22))
                              ])),
                      Padding(
                          padding: getPadding(top: 9),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse6540x40,
                                    height: getSize(40),
                                    width: getSize(40),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(20)),
                                    margin: getMargin(top: 33, bottom: 22)),
                                Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                          width: getHorizontalSize(287),
                                          padding: getPadding(
                                              left: 16,
                                              top: 13,
                                              right: 16,
                                              bottom: 13),
                                          decoration: AppDecoration
                                              .txtFillGray10001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .txtCustomBorderTL30),
                                          child: Text("msg_hi_anne_i_am_f".tr,
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular14Gray500)),
                                      Padding(
                                          padding: getPadding(top: 4),
                                          child: Text("lbl_18_27".tr,
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtPoppinsRegular12Gray500))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 9, bottom: 8),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgEllipse6540x40,
                                height: getSize(40),
                                width: getSize(40),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(20))),
                            Padding(
                                padding:
                                    getPadding(left: 6, top: 11, bottom: 7),
                                child: Text("msg_mahbuba_is_typi".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsRegular14Gray500))
                          ]))
                    ])),
            bottomNavigationBar:
                BlocSelector<ChatBloc, ChatState, TextEditingController?>(
                    selector: (state) => state.messagestatusController,
                    builder: (context, messagestatusController) {
                      return CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: messagestatusController,
                          hintText: "lbl_type_a_message".tr,
                          margin: getMargin(left: 16, right: 16, bottom: 27),
                          variant: TextFormFieldVariant.FillGray20005,
                          padding: TextFormFieldPadding.PaddingT14,
                          fontStyle:
                              TextFormFieldFontStyle.PoppinsRegular14Gray500,
                          textInputAction: TextInputAction.done,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 14, right: 27, bottom: 14),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgMicrophone)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(52)));
                    })));
  }

  onTapArrowleft19(BuildContext context) {
    NavigatorService.goBack();
  }
}
