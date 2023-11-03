import 'bloc/complete_bloc.dart';
import 'models/complete_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CompleteScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<CompleteBloc>(
        create: (context) =>
            CompleteBloc(CompleteState(completeModelObj: CompleteModel()))
              ..add(CompleteInitialEvent()),
        child: CompleteScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CompleteBloc, CompleteState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding: getPadding(left: 16, right: 16),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgCheckmark,
                            height: getVerticalSize(97),
                            width: getHorizontalSize(87)),
                        Container(
                            width: getHorizontalSize(278),
                            margin: getMargin(left: 33, top: 40, right: 32),
                            child: Text("msg_order_completed".tr,
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtPoppinsRegular18)),
                        CustomButton(
                            height: getVerticalSize(52),
                            text: "lbl_my_orders".tr,
                            margin: getMargin(top: 49, bottom: 5),
                            onTap: () {
                              onTapMyorders(context);
                            })
                      ]))));
    });
  }

  onTapMyorders(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.trackingOrderScreen,
    );
  }
}
