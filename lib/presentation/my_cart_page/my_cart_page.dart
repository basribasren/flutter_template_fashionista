import '../my_cart_page/widgets/mycart_item_widget.dart';
import 'bloc/my_cart_bloc.dart';
import 'models/my_cart_model.dart';
import 'models/mycart_item_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:basri_s_application22/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class MyCartPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<MyCartBloc>(
        create: (context) =>
            MyCartBloc(MyCartState(myCartModelObj: MyCartModel()))
              ..add(MyCartInitialEvent()),
        child: MyCartPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(45),
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(40),
                    width: getSize(40),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 16),
                    onTap: () {
                      onTapArrowleft9(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_my_cart".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgBag,
                      margin: getMargin(left: 16, top: 8, right: 16, bottom: 8))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding:
                            getPadding(left: 16, top: 23, right: 16, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("msg_promo_code_or_v".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtPoppinsRegular20),
                                    CustomImageView(
                                        svgPath:
                                            ImageConstant.imgArrowrightBlack900,
                                        height: getSize(16),
                                        width: getSize(16),
                                        margin: getMargin(top: 7, bottom: 6))
                                  ]),
                              Padding(
                                  padding: getPadding(top: 21),
                                  child: BlocSelector<MyCartBloc, MyCartState,
                                          MyCartModel?>(
                                      selector: (state) => state.myCartModelObj,
                                      builder: (context, myCartModelObj) {
                                        return ListView.separated(
                                            physics:
                                                NeverScrollableScrollPhysics(),
                                            shrinkWrap: true,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(14));
                                            },
                                            itemCount: myCartModelObj
                                                    ?.mycartItemList.length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              MycartItemModel model =
                                                  myCartModelObj
                                                              ?.mycartItemList[
                                                          index] ??
                                                      MycartItemModel();
                                              return MycartItemWidget(model);
                                            });
                                      })),
                              Padding(
                                  padding: getPadding(top: 31),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_subtotal".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular17),
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl2".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .orange700,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: "lbl_134_942".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 7),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_fee_delivery".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular17),
                                        Padding(
                                            padding: getPadding(bottom: 2),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl2".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .orange700,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: "lbl_102".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 4),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_total".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtPoppinsMedium17),
                                        Padding(
                                            padding: getPadding(top: 1),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text: "lbl2".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .orange700,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600)),
                                                  TextSpan(
                                                      text: "lbl_144_942".tr,
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .black900,
                                                          fontSize:
                                                              getFontSize(16),
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.w600))
                                                ]),
                                                textAlign: TextAlign.left))
                                      ])),
                              CustomButton(
                                  height: getVerticalSize(52),
                                  text: "lbl_checkout".tr,
                                  margin: getMargin(top: 35),
                                  onTap: () {
                                    onTapCheckout(context);
                                  })
                            ]))))));
  }

  onTapCheckout(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.checkoutScreen,
    );
  }

  onTapArrowleft9(BuildContext context) {
    NavigatorService.goBack();
  }
}
