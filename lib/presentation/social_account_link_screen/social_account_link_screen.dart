import '../social_account_link_screen/widgets/listfacebook_item_widget.dart';
import 'bloc/social_account_link_bloc.dart';
import 'models/listfacebook_item_model.dart';
import 'models/social_account_link_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_image.dart';
import 'package:basri_s_application22/widgets/app_bar/appbar_subtitle.dart';
import 'package:basri_s_application22/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:basri_s_application22/presentation/social_account_link_alert_bottomsheet/social_account_link_alert_bottomsheet.dart';

class SocialAccountLinkScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SocialAccountLinkBloc>(
        create: (context) => SocialAccountLinkBloc(SocialAccountLinkState(
            socialAccountLinkModelObj: SocialAccountLinkModel()))
          ..add(SocialAccountLinkInitialEvent()),
        child: SocialAccountLinkScreen());
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
                      onTapArrowleft18(context);
                    }),
                centerTitle: true,
                title: AppbarSubtitle(text: "lbl_social_network".tr)),
            body: Padding(
                padding: getPadding(left: 16, top: 24, right: 16),
                child: BlocSelector<SocialAccountLinkBloc,
                        SocialAccountLinkState, SocialAccountLinkModel?>(
                    selector: (state) => state.socialAccountLinkModelObj,
                    builder: (context, socialAccountLinkModelObj) {
                      return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return SizedBox(height: getVerticalSize(15));
                          },
                          itemCount: socialAccountLinkModelObj
                                  ?.listfacebookItemList.length ??
                              0,
                          itemBuilder: (context, index) {
                            ListfacebookItemModel model =
                                socialAccountLinkModelObj
                                        ?.listfacebookItemList[index] ??
                                    ListfacebookItemModel();
                            return ListfacebookItemWidget(model,
                                onTapImgLink: () {
                              onTapImgLink(context);
                            });
                          });
                    }))));
  }

  onTapImgLink(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => SocialAccountLinkAlertBottomsheet.builder(context),
        isScrollControlled: true);
  }

  onTapArrowleft18(BuildContext context) {
    NavigatorService.goBack();
  }
}
