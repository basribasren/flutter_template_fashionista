import '../notification_screen/widgets/listtime1_item_widget.dart';
import '../notification_screen/widgets/listtime_item_widget.dart';
import 'bloc/notification_bloc.dart';
import 'models/listtime1_item_model.dart';
import 'models/listtime_item_model.dart';
import 'models/notification_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
        create: (context) => NotificationBloc(
            NotificationState(notificationModelObj: NotificationModel()))
          ..add(NotificationInitialEvent()),
        child: NotificationScreen());
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
                      onTapArrowleft16(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_notifications".tr)),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 25, right: 16, bottom: 25),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("lbl_today".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtPoppinsMedium18Black900),
                      Padding(
                          padding: getPadding(top: 12),
                          child: BlocSelector<NotificationBloc,
                                  NotificationState, NotificationModel?>(
                              selector: (state) => state.notificationModelObj,
                              builder: (context, notificationModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: notificationModelObj
                                            ?.listtimeItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      ListtimeItemModel model =
                                          notificationModelObj
                                                  ?.listtimeItemList[index] ??
                                              ListtimeItemModel();
                                      return ListtimeItemWidget(model);
                                    });
                              })),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Text("lbl_yesterday".tr,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium18Black900)),
                      Padding(
                          padding: getPadding(top: 12),
                          child: BlocSelector<NotificationBloc,
                                  NotificationState, NotificationModel?>(
                              selector: (state) => state.notificationModelObj,
                              builder: (context, notificationModelObj) {
                                return ListView.separated(
                                    physics: NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(16));
                                    },
                                    itemCount: notificationModelObj
                                            ?.listtime1ItemList.length ??
                                        0,
                                    itemBuilder: (context, index) {
                                      Listtime1ItemModel model =
                                          notificationModelObj
                                                  ?.listtime1ItemList[index] ??
                                              Listtime1ItemModel();
                                      return Listtime1ItemWidget(model);
                                    });
                              }))
                    ]))));
  }

  onTapArrowleft16(BuildContext context) {
    NavigatorService.goBack();
  }
}
