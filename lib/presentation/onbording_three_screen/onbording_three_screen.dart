import 'bloc/onbording_three_bloc.dart';
import 'models/onbording_three_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle_1.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application22/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OnbordingThreeScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<OnbordingThreeBloc>(
        create: (context) => OnbordingThreeBloc(
            OnbordingThreeState(onbordingThreeModelObj: OnbordingThreeModel()))
          ..add(OnbordingThreeInitialEvent()),
        child: OnbordingThreeScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnbordingThreeBloc, OnbordingThreeState>(
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
                        onTapArrowleft1(context);
                      }),
                  actions: [
                    AppbarSubtitle1(
                        text: "lbl_get_started".tr,
                        margin:
                            getMargin(left: 16, top: 11, right: 16, bottom: 11))
                  ]),
              body: Container(
                  width: size.width,
                  height: size.height,
                  decoration: BoxDecoration(
                      color: ColorConstant.whiteA700,
                      image: DecorationImage(
                          image: AssetImage(ImageConstant.imgOnbordingthree),
                          fit: BoxFit.cover)),
                  child: Container(
                      width: double.maxFinite,
                      padding:
                          getPadding(left: 44, top: 51, right: 44, bottom: 51),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Spacer(),
                            Text("lbl_all_for_you".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtPoppinsMedium24),
                            Container(
                                width: getHorizontalSize(285),
                                margin: getMargin(top: 14),
                                child: Text("msg_we_always_try_p".tr,
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
      AppRoutes.signUpSignInScreen,
    );
  }

  onTapArrowleft1(BuildContext context) {
    NavigatorService.goBack();
  }
}
