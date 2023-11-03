import 'bloc/forgot_password_bloc.dart';
import 'models/forgot_password_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application22/widgets/custom_button.dart';
import 'package:basri_s_application22/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ForgotPasswordBloc>(
        create: (context) => ForgotPasswordBloc(
            ForgotPasswordState(forgotPasswordModelObj: ForgotPasswordModel()))
          ..add(ForgotPasswordInitialEvent()),
        child: ForgotPasswordScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            appBar: CustomAppBar(
                height: getVerticalSize(50),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16, top: 5, bottom: 5),
                    onTap: () {
                      onTapArrowleft5(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_forgot_password".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 27, right: 16, bottom: 27),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(310),
                          margin: getMargin(right: 32),
                          child: Text("msg_we_need_your_registration".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16)),
                      BlocSelector<ForgotPasswordBloc, ForgotPasswordState,
                              TextEditingController?>(
                          selector: (state) => state.group1003Controller,
                          builder: (context, group1003Controller) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: group1003Controller,
                                hintText: "lbl_email".tr,
                                margin: getMargin(top: 72),
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.emailAddress);
                          }),
                      CustomButton(
                          height: getVerticalSize(52),
                          text: "lbl_send_code".tr,
                          margin: getMargin(top: 20, bottom: 5),
                          onTap: () {
                            onTapSendcode(context);
                          })
                    ]))));
  }

  onTapSendcode(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.verificationCodeScreen,
    );
  }

  onTapArrowleft5(BuildContext context) {
    NavigatorService.goBack();
  }
}
