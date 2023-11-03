import '../explore_shop_screen/widgets/chipviewgroup1315_item_widget.dart';
import 'bloc/explore_shop_bloc.dart';
import 'models/chipviewgroup1315_item_model.dart';
import 'models/explore_shop_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ExploreShopScreen extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<ExploreShopBloc>(
        create: (context) => ExploreShopBloc(
            ExploreShopState(exploreShopModelObj: ExploreShopModel()))
          ..add(ExploreShopInitialEvent()),
        child: ExploreShopScreen());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray10002,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 16, top: 32, right: 16, bottom: 32),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(192),
                          child: Text("msg_what_products_y".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsMedium26)),
                      Container(
                          width: getHorizontalSize(294),
                          margin: getMargin(top: 13, right: 49),
                          child: Text("msg_choose_which_yo".tr,
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtPoppinsRegular16)),
                      Padding(
                          padding: getPadding(top: 35, bottom: 5),
                          child: BlocSelector<ExploreShopBloc, ExploreShopState,
                                  ExploreShopModel?>(
                              selector: (state) => state.exploreShopModelObj,
                              builder: (context, exploreShopModelObj) {
                                return Wrap(
                                    runSpacing: getVerticalSize(5),
                                    spacing: getHorizontalSize(5),
                                    children: List<Widget>.generate(
                                        exploreShopModelObj
                                                ?.chipviewgroup1315ItemList
                                                .length ??
                                            0, (index) {
                                      Chipviewgroup1315ItemModel model =
                                          exploreShopModelObj
                                                      ?.chipviewgroup1315ItemList[
                                                  index] ??
                                              Chipviewgroup1315ItemModel();
                                      return Chipviewgroup1315ItemWidget(model,
                                          onSelectedChipView: (value) {
                                        context.read<ExploreShopBloc>().add(
                                            UpdateChipViewEvent(
                                                index: index,
                                                isSelected: value));
                                      });
                                    }));
                              }))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(52),
                text: "lbl_explore_shop".tr,
                margin: getMargin(left: 16, right: 16, bottom: 36),
                onTap: () {
                  onTapExploreshop(context);
                })));
  }

  onTapExploreshop(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeContainerScreen,
    );
  }
}
