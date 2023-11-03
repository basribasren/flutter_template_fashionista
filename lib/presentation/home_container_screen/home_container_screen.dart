import 'bloc/home_container_bloc.dart';
import 'models/home_container_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/presentation/home_page/home_page.dart';
import 'package:basri_s_application22/presentation/my_cart_page/my_cart_page.dart';
import 'package:basri_s_application22/presentation/profile_page/profile_page.dart';
import 'package:basri_s_application22/presentation/search_page/search_page.dart';
import 'package:basri_s_application22/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeContainerBloc>(
        create: (context) => HomeContainerBloc(
            HomeContainerState(homeContainerModelObj: HomeContainerModel()))
          ..add(HomeContainerInitialEvent()),
        child: HomeContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeContainerBloc, HomeContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: ColorConstant.whiteA700,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.homePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homePage;
      case BottomBarEnum.Search24x24:
        return AppRoutes.searchPage;
      case BottomBarEnum.Cart:
        return AppRoutes.myCartPage;
      case BottomBarEnum.User:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homePage:
        return HomePage.builder(context);
      case AppRoutes.searchPage:
        return SearchPage.builder(context);
      case AppRoutes.myCartPage:
        return MyCartPage.builder(context);
      case AppRoutes.profilePage:
        return ProfilePage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
