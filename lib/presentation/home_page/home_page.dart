import '../home_page/widgets/listgroup_item_widget.dart';
import '../home_page/widgets/listunsplashemlkhdeydhg_item_widget.dart';
import '../home_page/widgets/listunsplashzhh3wm2ko3s_item_widget.dart';
import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'models/listgroup_item_model.dart';
import 'models/listunsplashemlkhdeydhg_item_model.dart';
import 'models/listunsplashzhh3wm2ko3s_item_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomePage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(37),
                leadingWidth: 40,
                leading: AppbarImage(
                    height: getSize(24),
                    width: getSize(24),
                    svgPath: ImageConstant.imgComputer,
                    margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgSearch,
                      margin: getMargin(left: 16)),
                  AppbarImage(
                      height: getSize(24),
                      width: getSize(24),
                      svgPath: ImageConstant.imgNotification,
                      margin: getMargin(left: 24, right: 16),
                      onTap: () {
                        onTapNotification(context);
                      })
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 16, top: 40, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text("lbl_find_your_style".tr,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtPoppinsBold24)),
                              Container(
                                  height: getVerticalSize(51),
                                  child: BlocSelector<HomeBloc, HomeState,
                                          HomeModel?>(
                                      selector: (state) => state.homeModelObj,
                                      builder: (context, homeModelObj) {
                                        return ListView.separated(
                                            padding: getPadding(top: 18),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(16));
                                            },
                                            itemCount: homeModelObj
                                                    ?.listgroupItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              ListgroupItemModel model =
                                                  homeModelObj?.listgroupItemList[
                                                          index] ??
                                                      ListgroupItemModel();
                                              return ListgroupItemWidget(model);
                                            });
                                      })),
                              Container(
                                  height: getVerticalSize(327),
                                  child: BlocSelector<HomeBloc, HomeState,
                                          HomeModel?>(
                                      selector: (state) => state.homeModelObj,
                                      builder: (context, homeModelObj) {
                                        return ListView.separated(
                                            padding: getPadding(top: 31),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(16));
                                            },
                                            itemCount: homeModelObj
                                                    ?.listunsplashemlkhdeydhgItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              ListunsplashemlkhdeydhgItemModel
                                                  model =
                                                  homeModelObj?.listunsplashemlkhdeydhgItemList[
                                                          index] ??
                                                      ListunsplashemlkhdeydhgItemModel();
                                              return ListunsplashemlkhdeydhgItemWidget(
                                                  model,
                                                  onTapColumnunsplashemlkhdeydhg:
                                                      () {
                                                onTapColumnunsplashemlkhdeydhg(
                                                    context);
                                              });
                                            });
                                      })),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                      padding: getPadding(top: 29, right: 16),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text("lbl_populer_items".tr,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtPoppinsMedium18Black900),
                                            GestureDetector(
                                                onTap: () {
                                                  onTapTxtSeeAll(context);
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 1, bottom: 4),
                                                    child: Text(
                                                        "lbl_see_all".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsMedium14Orange700)))
                                          ]))),
                              Container(
                                  height: getVerticalSize(263),
                                  child: BlocSelector<HomeBloc, HomeState,
                                          HomeModel?>(
                                      selector: (state) => state.homeModelObj,
                                      builder: (context, homeModelObj) {
                                        return ListView.separated(
                                            padding: getPadding(top: 9),
                                            scrollDirection: Axis.horizontal,
                                            separatorBuilder: (context, index) {
                                              return SizedBox(
                                                  height: getVerticalSize(16));
                                            },
                                            itemCount: homeModelObj
                                                    ?.listunsplashzhh3wm2ko3sItemList
                                                    .length ??
                                                0,
                                            itemBuilder: (context, index) {
                                              Listunsplashzhh3wm2ko3sItemModel
                                                  model =
                                                  homeModelObj?.listunsplashzhh3wm2ko3sItemList[
                                                          index] ??
                                                      Listunsplashzhh3wm2ko3sItemModel();
                                              return Listunsplashzhh3wm2ko3sItemWidget(
                                                  model,
                                                  onTapColumnunsplashzhh3wm2ko3s:
                                                      () {
                                                onTapColumnunsplashzhh3wm2ko3s(
                                                    context);
                                              });
                                            });
                                      }))
                            ]))))));
  }

  onTapColumnunsplashzhh3wm2ko3s(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productViewScreen);
  }

  onTapColumnunsplashemlkhdeydhg(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.productViewScreen);
  }

  onTapTxtSeeAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.popularItemsScreen,
    );
  }

  onTapNotification(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.notificationScreen,
    );
  }
}
