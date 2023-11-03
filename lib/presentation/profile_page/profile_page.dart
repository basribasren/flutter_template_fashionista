import 'bloc/profile_bloc.dart';
import 'models/profile_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:basri_s_application22/presentation/logout_bottomsheet/logout_bottomsheet.dart';

class ProfilePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
        create: (context) =>
            ProfileBloc(ProfileState(profileModelObj: ProfileModel()))
              ..add(ProfileInitialEvent()),
        child: ProfilePage());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  decoration: AppDecoration.fillWhiteA700,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                              Container(
                                  height: getVerticalSize(226),
                                  width: double.maxFinite,
                                  child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 159,
                                                    top: 11,
                                                    right: 159,
                                                    bottom: 11),
                                                decoration: AppDecoration
                                                    .fillBlack900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderBL25),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                          padding: getPadding(
                                                              bottom: 84),
                                                          child: Text(
                                                              "lbl_profile".tr,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtPoppinsMedium18WhiteA700))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                                padding: getPadding(
                                                    left: 115, right: 115),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Container(
                                                          height:
                                                              getVerticalSize(
                                                                  104),
                                                          width:
                                                              getHorizontalSize(
                                                                  92),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgEllipse592x92,
                                                                    height:
                                                                        getSize(
                                                                            92),
                                                                    width:
                                                                        getSize(
                                                                            92),
                                                                    radius: BorderRadius.circular(
                                                                        getHorizontalSize(
                                                                            46)),
                                                                    alignment:
                                                                        Alignment
                                                                            .topCenter),
                                                                CustomIconButton(
                                                                    height: 30,
                                                                    width: 30,
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .OutlineWhiteA700,
                                                                    padding:
                                                                        IconButtonPadding
                                                                            .PaddingAll6,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter,
                                                                    onTap: () {
                                                                      onTapBtnCamera(
                                                                          context);
                                                                    },
                                                                    child: CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant.imgCamera))
                                                              ])),
                                                      Text(
                                                          "lbl_anne_christion"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsMedium20),
                                                      Text(
                                                          "lbl_xyz_gmail_com"
                                                              .tr,
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtPoppinsRegular127)
                                                    ])))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 23, right: 16),
                                  padding: getPadding(
                                      left: 16, top: 14, right: 16, bottom: 14),
                                  decoration: AppDecoration.fillGray10001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgUser24x24,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin: getMargin(bottom: 1)),
                                        Padding(
                                            padding: getPadding(left: 24),
                                            child: Text("lbl_personal_data".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular16)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlack900,
                                            height: getSize(16),
                                            width: getSize(16),
                                            margin:
                                                getMargin(top: 4, bottom: 5))
                                      ])),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 15, right: 16),
                                  padding: getPadding(
                                      left: 16, top: 12, right: 16, bottom: 12),
                                  decoration: AppDecoration.fillGray10001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant.imgSave,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 2, bottom: 1)),
                                        Padding(
                                            padding:
                                                getPadding(left: 24, top: 4),
                                            child: Text(
                                                "msg_transaction_his".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular16)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlack900,
                                            height: getSize(16),
                                            width: getSize(16),
                                            margin:
                                                getMargin(top: 5, bottom: 6))
                                      ])),
                              GestureDetector(
                                  onTap: () {
                                    onTapRowcar(context);
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 16, top: 15, right: 16),
                                      padding: getPadding(
                                          left: 16,
                                          top: 14,
                                          right: 16,
                                          bottom: 14),
                                      decoration: AppDecoration.fillGray10001
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgCar,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(top: 1)),
                                            Padding(
                                                padding: getPadding(left: 24),
                                                child: Text(
                                                    "lbl_discount_code".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular16)),
                                            Spacer(),
                                            CustomImageView(
                                                svgPath: ImageConstant
                                                    .imgArrowrightBlack900,
                                                height: getSize(16),
                                                width: getSize(16),
                                                margin: getMargin(
                                                    top: 4, bottom: 5))
                                          ]))),
                              Container(
                                  margin:
                                      getMargin(left: 16, top: 15, right: 16),
                                  padding: getPadding(
                                      left: 16, top: 12, right: 16, bottom: 12),
                                  decoration: AppDecoration.fillGray10001
                                      .copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder8),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            svgPath:
                                                ImageConstant.imgSettings24x24,
                                            height: getSize(24),
                                            width: getSize(24),
                                            margin:
                                                getMargin(top: 1, bottom: 2)),
                                        Padding(
                                            padding:
                                                getPadding(left: 24, top: 3),
                                            child: Text("lbl_settings".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsRegular16)),
                                        Spacer(),
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowrightBlack900,
                                            height: getSize(16),
                                            width: getSize(16),
                                            margin:
                                                getMargin(top: 5, bottom: 6))
                                      ])),
                              Spacer(),
                              GestureDetector(
                                  onTap: () {
                                    onTapLogout(context);
                                  },
                                  child: Container(
                                      margin: getMargin(
                                          left: 16, right: 16, bottom: 37),
                                      padding: getPadding(
                                          left: 120,
                                          top: 11,
                                          right: 120,
                                          bottom: 11),
                                      decoration: AppDecoration.fillBlack900
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder8),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgArrowright,
                                                height: getSize(24),
                                                width: getSize(24),
                                                margin: getMargin(
                                                    top: 2, bottom: 2)),
                                            Padding(
                                                padding: getPadding(top: 5),
                                                child: Text("lbl_logout".tr,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtPoppinsRegular16WhiteA700))
                                          ])))
                            ]))
                      ]))));
    });
  }

  onTapBtnCamera(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapRowcar(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.discountItemsScreen,
    );
  }

  onTapLogout(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => LogoutBottomsheet.builder(context),
        isScrollControlled: true);
  }
}
