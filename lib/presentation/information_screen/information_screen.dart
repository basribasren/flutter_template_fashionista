import 'bloc/information_bloc.dart';
import 'models/information_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application22/widgets/custom_button.dart';
import 'package:basri_s_application22/widgets/custom_icon_button.dart';
import 'package:basri_s_application22/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class InformationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    var arg =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;
    return BlocProvider<InformationBloc>(
        create: (context) => InformationBloc(InformationState(
            informationModelObj: InformationModel(),
            id: arg[NavigationArgs.id]))
          ..add(InformationInitialEvent()),
        child: InformationScreen());
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
                      onTapArrowleft4(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_information".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 24, right: 16, bottom: 24),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: getVerticalSize(104),
                              width: getHorizontalSize(92),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse591x92,
                                        height: getVerticalSize(91),
                                        width: getHorizontalSize(92),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(46)),
                                        alignment: Alignment.topCenter),
                                    CustomIconButton(
                                        height: 29,
                                        width: 30,
                                        variant:
                                            IconButtonVariant.OutlineWhiteA700,
                                        padding: IconButtonPadding.PaddingAll6,
                                        alignment: Alignment.bottomCenter,
                                        onTap: () {
                                          onTapBtnCamera(context);
                                        },
                                        child: CustomImageView(
                                            svgPath: ImageConstant.imgCamera))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_anne_christion".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium20)),
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_xyz_gmail_com".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular127)),
                      Padding(
                          padding: getPadding(top: 11),
                          child: Text("lbl_account_name".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15)),
                      BlocSelector<InformationBloc, InformationState,
                              TextEditingController?>(
                          selector: (state) => state.groupController,
                          builder: (context, groupController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: groupController,
                                hintText: "lbl_anne_christion".tr,
                                margin: getMargin(top: 10));
                          }),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_date_of_birth".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15)),
                      BlocSelector<InformationBloc, InformationState,
                              TextEditingController?>(
                          selector: (state) => state.dateController,
                          builder: (context, dateController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: dateController,
                                hintText: "lbl_11_01_1997".tr,
                                margin: getMargin(top: 11));
                          }),
                      Padding(
                          padding: getPadding(top: 18),
                          child: Text("lbl_address".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15)),
                      BlocSelector<InformationBloc, InformationState,
                              TextEditingController?>(
                          selector: (state) => state.countryController,
                          builder: (context, countryController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: countryController,
                                hintText: "msg_new_south_wales".tr,
                                margin: getMargin(top: 10));
                          }),
                      Padding(
                          padding: getPadding(top: 17),
                          child: Text("lbl_mobile_number".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium15)),
                      BlocSelector<InformationBloc, InformationState,
                              TextEditingController?>(
                          selector: (state) => state.groupOneController,
                          builder: (context, groupOneController) {
                            return CustomTextFormField(
                                focusNode: FocusNode(),
                                controller: groupOneController,
                                hintText: "lbl_9999_999_999".tr,
                                margin: getMargin(top: 11, bottom: 3),
                                textInputAction: TextInputAction.done);
                          })
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(52),
                text: "lbl_complete".tr,
                margin: getMargin(left: 16, right: 16, bottom: 50),
                onTap: () {
                  onTapComplete(context);
                })));
  }

  onTapBtnCamera(BuildContext context) async {
    await PermissionManager.askForPermission(Permission.camera);
    await PermissionManager.askForPermission(Permission.storage);
    List<String?>? imageList = [];
    await FileManager().showModelSheetForImage(getImages: (value) async {
      imageList = value;
    });
  }

  onTapComplete(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.exploreShopScreen,
    );
  }

  onTapArrowleft4(BuildContext context) {
    NavigatorService.goBack();
  }
}
