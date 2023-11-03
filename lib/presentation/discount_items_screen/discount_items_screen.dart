import '../discount_items_screen/widgets/discountitems_item_widget.dart';
import 'bloc/discount_items_bloc.dart';
import 'models/discount_items_model.dart';
import 'models/discountitems_item_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class DiscountItemsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<DiscountItemsBloc>(
        create: (context) => DiscountItemsBloc(
            DiscountItemsState(discountItemsModelObj: DiscountItemsModel()))
          ..add(DiscountItemsInitialEvent()),
        child: DiscountItemsScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
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
                      onTapArrowleft17(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_discount_items".tr)),
            body: Padding(
                padding: getPadding(left: 16, top: 24, right: 16),
                child: BlocSelector<DiscountItemsBloc, DiscountItemsState,
                        DiscountItemsModel?>(
                    selector: (state) => state.discountItemsModelObj,
                    builder: (context, discountItemsModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(14));
                          },
                          itemCount: discountItemsModelObj
                                  ?.discountitemsItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            DiscountitemsItemModel model = discountItemsModelObj
                                    ?.discountitemsItemList[index] ??
                                DiscountitemsItemModel();
                            return DiscountitemsItemWidget(model,
                                onTapRowunsplashqnuur0o5xeight: () {
                              onTapRowunsplashqnuur0o5xeight(context);
                            });
                          });
                    }))));
  }

  onTapRowunsplashqnuur0o5xeight(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productViewScreen);
  }

  onTapArrowleft17(BuildContext context) {
    NavigatorService.goBack();
  }
}
