import 'bloc/logout_bloc.dart';
import 'models/logout_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LogoutBottomsheet extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<LogoutBloc>(
        create: (context) =>
            LogoutBloc(LogoutState(logoutModelObj: LogoutModel()))
              ..add(LogoutInitialEvent()),
        child: LogoutBottomsheet());
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 40, right: 16, bottom: 40),
                decoration: AppDecoration.fillWhiteA700
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL20),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: getPadding(top: 2),
                          child: Text("lbl_alert".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium25)),
                      Container(
                          width: getHorizontalSize(189),
                          margin: getMargin(top: 7),
                          child: Text("msg_do_you_want_to".tr,
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtPoppinsRegular15)),
                      Padding(
                          padding: getPadding(top: 47),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(52),
                                    width: getHorizontalSize(164),
                                    text: "lbl_yes".tr,
                                    onTap: () {
                                      onTapYes(context);
                                    }),
                                CustomButton(
                                    height: getVerticalSize(52),
                                    width: getHorizontalSize(163),
                                    text: "lbl_no".tr,
                                    variant: ButtonVariant.FillGray200,
                                    fontStyle: ButtonFontStyle
                                        .PoppinsMedium16Black900_1,
                                    onTap: () {
                                      onTapNo(context);
                                    })
                              ]))
                    ]))));
  }

  onTapYes(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }

  onTapNo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
