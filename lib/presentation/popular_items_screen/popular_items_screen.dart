import '../popular_items_screen/widgets/popularitems_item_widget.dart';
import 'bloc/popular_items_bloc.dart';
import 'models/popular_items_model.dart';
import 'models/popularitems_item_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class PopularItemsScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<PopularItemsBloc>(
        create: (context) => PopularItemsBloc(
            PopularItemsState(popularItemsModelObj: PopularItemsModel()))
          ..add(PopularItemsInitialEvent()),
        child: PopularItemsScreen());
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
                      onTapArrowleft8(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_popular_items".tr),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin:
                          getMargin(left: 16, top: 13, right: 16, bottom: 13))
                ]),
            body: Padding(
                padding: getPadding(left: 16, top: 24, right: 16),
                child: BlocSelector<PopularItemsBloc, PopularItemsState,
                        PopularItemsModel?>(
                    selector: (state) => state.popularItemsModelObj,
                    builder: (context, popularItemsModelObj) {
                      return GridView.builder(
                          shrinkWrap: true,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(255),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(16),
                                  crossAxisSpacing: getHorizontalSize(16)),
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: popularItemsModelObj
                                  ?.popularitemsItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            PopularitemsItemModel model = popularItemsModelObj
                                    ?.popularitemsItemList[index] ??
                                PopularitemsItemModel();
                            return PopularitemsItemWidget(model,
                                onTapColumnunsplashzhh3wm2ko3s: () {
                              onTapColumnunsplashzhh3wm2ko3s(context);
                            });
                          });
                    }))));
  }

  onTapColumnunsplashzhh3wm2ko3s(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productViewScreen);
  }

  onTapArrowleft8(BuildContext context) {
    NavigatorService.goBack();
  }
}
