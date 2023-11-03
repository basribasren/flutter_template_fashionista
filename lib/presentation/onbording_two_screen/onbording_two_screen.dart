import 'bloc/onbording_two_bloc.dart';
import 'models/onbording_two_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application22/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OnbordingTwoScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnbordingTwoBloc>(
        create: (context) => OnbordingTwoBloc(
            OnbordingTwoState(onbordingTwoModelObj: OnbordingTwoModel()))
          ..add(OnbordingTwoInitialEvent()),
        child: OnbordingTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnbordingTwoBloc, OnbordingTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              extendBody: true,
              extendBodyBehindAppBar: true,
              backgroundColor: ColorConstant.whiteA700,
              appBar: CustomAppBar(
                  height: getVerticalSize(50),
                  leadingWidth: 56,
                  leading: AppbarImage(
                      height: getSize(40),
                      width: getSize(40),
                      svgPath: ImageConstant.imgArrowleft,
                      margin: getMargin(left: 16, top: 5, bottom: 5),
                      onTap: () {
                        onTapArrowleft(context);
                      }),
                  actions: [
                    AppbarSubtitle1(
                        text: "lbl_skip".tr,
                        margin:
                            getMargin(left: 16, top: 13, right: 16, bottom: 9),
                        onTap: () {
                          onTapSkip(context);
                        })
                  ]),
              body: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgOnbordingtwo),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          getPadding(left: 50, top: 51, right: 50, bottom: 51),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Spacer(),
                            Text("lbl_latest_style".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium24),
                            Container(
                                width: getHorizontalSize(275),
                                margin: getMargin(top: 11),
                                child: Text("msg_the_latest_styl".tr,
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtPoppinsRegular14)),
                            Container(
                                height: getSize(80),
                                width: getSize(80),
                                margin: getMargin(top: 39),
                                child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      CustomIconButton(
                                          height: 60,
                                          width: 60,
                                          shape: IconButtonShape.CircleBorder30,
                                          alignment: Alignment.center,
                                          onTap: () {
                                            onTapBtnArrowright(context);
                                          },
                                          child: CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgArrowrightBlack9001)),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Container(
                                              height: getSize(80),
                                              width: getSize(80),
                                              child: CircularProgressIndicator(
                                                  value: 0.5)))
                                    ]))
                          ])))));
    });
  }

  onTapBtnArrowright(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.onbordingThreeScreen,
    );
  }

  onTapArrowleft(BuildContext context) {
    NavigatorService.goBack();
  }

  onTapSkip(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpSignInScreen,
    );
  }
}
