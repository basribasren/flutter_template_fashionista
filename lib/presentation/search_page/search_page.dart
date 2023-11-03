import '../search_page/widgets/search_item_widget.dart';
import 'bloc/search_bloc.dart';
import 'models/search_item_model.dart';
import 'models/search_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  static Widget builder(BuildContext context) {
    return BlocProvider<SearchBloc>(
        create: (context) =>
            SearchBloc(SearchState(searchModelObj: SearchModel()))
              ..add(SearchInitialEvent()),
        child: SearchPage());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillWhiteA700,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(top: 11, bottom: 11),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_search".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsMedium18Black900),
                                BlocSelector<SearchBloc, SearchState,
                                        TextEditingController?>(
                                    selector: (state) =>
                                        state.group1305Controller,
                                    builder: (context, group1305Controller) {
                                      return CustomSearchView(
                                          focusNode: FocusNode(),
                                          controller: group1305Controller,
                                          hintText: "lbl_search".tr,
                                          margin: getMargin(
                                              left: 16, top: 35, right: 16),
                                          prefix: Container(
                                              margin: getMargin(all: 16),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgSearchGray50016x16)),
                                          prefixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(48)),
                                          suffix: Container(
                                              padding: getPadding(
                                                  left: 13,
                                                  top: 12,
                                                  right: 14,
                                                  bottom: 13),
                                              margin: getMargin(
                                                  left: 30,
                                                  top: 4,
                                                  right: 4,
                                                  bottom: 4),
                                              decoration: BoxDecoration(
                                                  color: ColorConstant.black900,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              8))),
                                              child: CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgSettings)),
                                          suffixConstraints: BoxConstraints(
                                              maxHeight: getVerticalSize(48)));
                                    }),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 16, top: 18),
                                        child: Text("lbl_recent_search".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium18Black900))),
                                SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    padding: getPadding(left: 16, top: 12),
                                    child: IntrinsicWidth(
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashqnuur0o5x858x581,
                                              height: getSize(58),
                                              width: getSize(58),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10))),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashqnuur0o5x858x582,
                                              height: getSize(58),
                                              width: getSize(58),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              margin: getMargin(left: 24)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashqnuur0o5x858x583,
                                              height: getSize(58),
                                              width: getSize(58),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              margin: getMargin(left: 24)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashqnuur0o5x858x584,
                                              height: getSize(58),
                                              width: getSize(58),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              margin: getMargin(left: 24)),
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashqnuur0o5x858x585,
                                              height: getSize(58),
                                              width: getSize(58),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(10)),
                                              margin: getMargin(left: 24))
                                        ]))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 16, top: 36),
                                        child: Text("msg_items_that_you".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsMedium18Black900))),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 10, right: 16),
                                    child: BlocSelector<SearchBloc, SearchState,
                                            SearchModel?>(
                                        selector: (state) =>
                                            state.searchModelObj,
                                        builder: (context, searchModelObj) {
                                          return ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height:
                                                        getVerticalSize(14));
                                              },
                                              itemCount: searchModelObj
                                                      ?.searchItemList.length ??
                                                  0,
                                              itemBuilder: (context, index) {
                                                SearchItemModel model =
                                                    searchModelObj
                                                                ?.searchItemList[
                                                            index] ??
                                                        SearchItemModel();
                                                return SearchItemWidget(model,
                                                    onTapRowtype: () {
                                                  onTapRowtype(context);
                                                });
                                              });
                                        }))
                              ]))
                    ]))));
  }

  onTapRowtype(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.productViewScreen,
    );
  }
}
