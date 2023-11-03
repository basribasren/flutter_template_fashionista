import 'bloc/reset_password_bloc.dart';
import 'models/reset_password_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application22/widgets/custom_button.dart';
import 'package:basri_s_application22/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ResetPasswordBloc>(
        create: (context) => ResetPasswordBloc(
            ResetPasswordState(resetPasswordModelObj: ResetPasswordModel()))
          ..add(ResetPasswordInitialEvent()),
        child: ResetPasswordScreen());
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
                      onTapArrowleft7(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_reset_password".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 28, right: 16, bottom: 28),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 9),
                          child: Text("msg_enter_a_new_pas".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16)),
                      BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: state.group964Controller,
                            hintText: "lbl_new_password".tr,
                            margin: getMargin(top: 49),
                            padding: TextFormFieldPadding.PaddingT14,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  context.read<ResetPasswordBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 18,
                                        right: 16,
                                        bottom: 18),
                                    child: CustomImageView(
                                        svgPath: state.isShowPassword
                                            ? ImageConstant.imgLocation
                                            : ImageConstant.imgLocation))),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(52)),
                            isObscureText: state.isShowPassword);
                      }),
                      BlocBuilder<ResetPasswordBloc, ResetPasswordState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            focusNode: FocusNode(),
                            controller: state.group965Controller,
                            hintText: "msg_confirm_passwor".tr,
                            margin: getMargin(top: 20),
                            padding: TextFormFieldPadding.PaddingT14,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  context.read<ResetPasswordBloc>().add(
                                      ChangePasswordVisibilityEvent1(
                                          value: !state.isShowPassword1));
                                },
                                child: Container(
                                    margin: getMargin(
                                        left: 30,
                                        top: 18,
                                        right: 16,
                                        bottom: 18),
                                    child: CustomImageView(
                                        svgPath: state.isShowPassword1
                                            ? ImageConstant.imgLocation
                                            : ImageConstant.imgLocation))),
                            suffixConstraints:
                                BoxConstraints(maxHeight: getVerticalSize(52)),
                            isObscureText: state.isShowPassword1);
                      }),
                      Spacer(),
                      CustomButton(
                          height: getVerticalSize(52),
                          text: "lbl_confirm".tr,
                          margin: getMargin(bottom: 310),
                          onTap: () {
                            onTapConfirm(context);
                          })
                    ]))));
  }

  onTapConfirm(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signInScreen,
    );
  }

  onTapArrowleft7(BuildContext context) {
    NavigatorService.goBack();
  }
}
