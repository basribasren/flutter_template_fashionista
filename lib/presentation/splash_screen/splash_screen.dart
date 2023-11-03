import 'bloc/splash_bloc.dart';
import 'models/splash_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SplashBloc>(
        create: (context) =>
            SplashBloc(SplashState(splashModelObj: SplashModel()))
              ..add(SplashInitialEvent()),
        child: SplashScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SplashBloc, SplashState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.gray100,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(top: 171),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgBag11,
                            height: getSize(191),
                            width: getSize(191)),
                        Padding(
                            padding: getPadding(top: 25, bottom: 5),
                            child: Text("lbl_fashionista".tr,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtQuicksandRegular32.copyWith(
                                    letterSpacing: getHorizontalSize(1.0))))
                      ]))));
    });
  }
}
