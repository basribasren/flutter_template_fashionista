import '../reviews_page/widgets/listdatatype_item_widget.dart';
import '../reviews_page/widgets/listrating_item_widget.dart';
import 'bloc/reviews_bloc.dart';
import 'models/listdatatype_item_model.dart';
import 'models/listrating_item_model.dart';
import 'models/reviews_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:basri_s_application22/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ReviewsPage extends StatefulWidget {
  @override
  _ReviewsPageState createState() => _ReviewsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ReviewsBloc>(
        create: (context) =>
            ReviewsBloc(ReviewsState(reviewsModelObj: ReviewsModel()))
              ..add(ReviewsInitialEvent()),
        child: ReviewsPage());
  }

  onTapWriteareview(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.writeAReviewScreen,
    );
  }
}

class _ReviewsPageState extends State<ReviewsPage>
    with AutomaticKeepAliveClientMixin<ReviewsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      Padding(
                          padding: getPadding(left: 16, top: 19, right: 16),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("lbl_4_8".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsSemiBold30
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(2.4))),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: RatingBar.builder(
                                        initialRating: 4,
                                        minRating: 0,
                                        direction: Axis.horizontal,
                                        allowHalfRating: false,
                                        itemSize: getVerticalSize(20),
                                        unratedColor: ColorConstant.amber500,
                                        itemCount: 5,
                                        updateOnDrag: true,
                                        onRatingUpdate: (rating) {},
                                        itemBuilder: (context, _) {
                                          return Icon(Icons.star,
                                              color: ColorConstant.amber500);
                                        })),
                                Padding(
                                    padding: getPadding(top: 10),
                                    child: Text("msg_based_on_1_024".tr,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtPoppinsRegular14Gray500)),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: BlocSelector<ReviewsBloc,
                                            ReviewsState, ReviewsModel?>(
                                        selector: (state) =>
                                            state.reviewsModelObj,
                                        builder: (context, reviewsModelObj) {
                                          return ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height: getVerticalSize(6));
                                              },
                                              itemCount: reviewsModelObj
                                                      ?.listratingItemList
                                                      .length ??
                                                  0,
                                              itemBuilder: (context, index) {
                                                ListratingItemModel model =
                                                    reviewsModelObj
                                                                ?.listratingItemList[
                                                            index] ??
                                                        ListratingItemModel();
                                                return ListratingItemWidget(
                                                    model);
                                              });
                                        })),
                                Padding(
                                    padding: getPadding(top: 8),
                                    child: BlocSelector<ReviewsBloc,
                                            ReviewsState, ReviewsModel?>(
                                        selector: (state) =>
                                            state.reviewsModelObj,
                                        builder: (context, reviewsModelObj) {
                                          return ListView.separated(
                                              physics:
                                                  NeverScrollableScrollPhysics(),
                                              shrinkWrap: true,
                                              separatorBuilder:
                                                  (context, index) {
                                                return SizedBox(
                                                    height: getVerticalSize(5));
                                              },
                                              itemCount: reviewsModelObj
                                                      ?.listdatatypeItemList
                                                      .length ??
                                                  0,
                                              itemBuilder: (context, index) {
                                                ListdatatypeItemModel model =
                                                    reviewsModelObj
                                                                ?.listdatatypeItemList[
                                                            index] ??
                                                        ListdatatypeItemModel();
                                                return ListdatatypeItemWidget(
                                                    model);
                                              });
                                        })),
                                Padding(
                                    padding: getPadding(top: 27),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse533x331,
                                              height: getSize(33),
                                              width: getSize(33),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(16)),
                                              margin: getMargin(top: 3)),
                                          Padding(
                                              padding: getPadding(left: 8),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_ariana_peter".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14Black900),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 1),
                                                        child:
                                                            RatingBar.builder(
                                                                initialRating:
                                                                    4,
                                                                minRating: 0,
                                                                direction: Axis
                                                                    .horizontal,
                                                                allowHalfRating:
                                                                    false,
                                                                itemSize:
                                                                    getVerticalSize(
                                                                        14),
                                                                unratedColor:
                                                                    ColorConstant
                                                                        .amber500,
                                                                itemCount: 5,
                                                                updateOnDrag:
                                                                    true,
                                                                onRatingUpdate:
                                                                    (rating) {},
                                                                itemBuilder:
                                                                    (context,
                                                                        _) {
                                                                  return Icon(
                                                                      Icons
                                                                          .star,
                                                                      color: ColorConstant
                                                                          .amber500);
                                                                }))
                                                  ])),
                                          Spacer(),
                                          Padding(
                                              padding:
                                                  getPadding(top: 7, bottom: 7),
                                              child: Text("lbl_1_day_ago".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14Gray500
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  1.12))))
                                        ])),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: getHorizontalSize(291),
                                        margin: getMargin(
                                            left: 41, top: 12, right: 11),
                                        child: Text("msg_it_is_a_long_es2".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular14))),
                                Padding(
                                    padding: getPadding(top: 23),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEllipse533x332,
                                              height: getSize(33),
                                              width: getSize(33),
                                              radius: BorderRadius.circular(
                                                  getHorizontalSize(16)),
                                              margin: getMargin(top: 1)),
                                          Padding(
                                              padding: getPadding(left: 8),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    Text("lbl_nancy_wheeler".tr,
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtPoppinsRegular14Black900),
                                                    RatingBar.builder(
                                                        initialRating: 4,
                                                        minRating: 0,
                                                        direction:
                                                            Axis.horizontal,
                                                        allowHalfRating: false,
                                                        itemSize:
                                                            getVerticalSize(14),
                                                        unratedColor:
                                                            ColorConstant
                                                                .amber500,
                                                        itemCount: 5,
                                                        updateOnDrag: true,
                                                        onRatingUpdate:
                                                            (rating) {},
                                                        itemBuilder:
                                                            (context, _) {
                                                          return Icon(
                                                              Icons.star,
                                                              color:
                                                                  ColorConstant
                                                                      .amber500);
                                                        })
                                                  ])),
                                          Spacer(),
                                          Padding(
                                              padding:
                                                  getPadding(top: 5, bottom: 7),
                                              child: Text("lbl_1_day_ago".tr,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtPoppinsRegular14Gray500
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  1.12))))
                                        ])),
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Container(
                                        width: getHorizontalSize(291),
                                        margin: getMargin(
                                            left: 41, top: 12, right: 11),
                                        child: Text("msg_it_is_a_long_es2".tr,
                                            maxLines: null,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtInterRegular14))),
                                CustomButton(
                                    height: getVerticalSize(52),
                                    text: "lbl_write_a_review".tr,
                                    margin: getMargin(top: 28),
                                    onTap: () {
                                      onTapWriteareview(context);
                                    })
                              ]))
                    ])))));
  }

  onTapWriteareview(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.writeAReviewScreen,
    );
  }
}
