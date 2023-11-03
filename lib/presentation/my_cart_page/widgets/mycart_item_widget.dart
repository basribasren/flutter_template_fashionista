import '../models/mycart_item_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MycartItemWidget extends StatelessWidget {
  MycartItemWidget(this.mycartItemModelObj);

  MycartItemModel mycartItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgUnsplash8hqpxttomn0171x142,
          height: getVerticalSize(
            171,
          ),
          width: getHorizontalSize(
            142,
          ),
          radius: BorderRadius.circular(
            getHorizontalSize(
              20,
            ),
          ),
          margin: getMargin(
            top: 5,
            bottom: 2,
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                left: 4,
              ),
              child: Text(
                mycartItemModelObj.typeTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsMedium18Black900,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 4,
                top: 5,
              ),
              child: Text(
                mycartItemModelObj.nameTxt,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular15Black900,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 4,
                top: 4,
              ),
              child: Text(
                "lbl_size_xl".tr,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtPoppinsRegular14Gray500,
              ),
            ),
            Padding(
              padding: getPadding(
                left: 4,
                top: 4,
              ),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl2".tr,
                      style: TextStyle(
                        color: ColorConstant.orange700,
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    TextSpan(
                      text: "lbl_134_982".tr,
                      style: TextStyle(
                        color: ColorConstant.black900,
                        fontSize: getFontSize(
                          18,
                        ),
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 33,
              ),
              child: Row(
                children: [
                  Container(
                    width: getHorizontalSize(
                      88,
                    ),
                    padding: getPadding(
                      all: 2,
                    ),
                    decoration: AppDecoration.fillGray10001.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgClock,
                          height: getSize(
                            28,
                          ),
                          width: getSize(
                            28,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 11,
                            top: 3,
                            bottom: 1,
                          ),
                          child: Text(
                            "lbl_1".tr,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsMedium15,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgPlus,
                          height: getSize(
                            28,
                          ),
                          width: getSize(
                            28,
                          ),
                          margin: getMargin(
                            left: 11,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomImageView(
                    svgPath: ImageConstant.imgClose,
                    height: getSize(
                      16,
                    ),
                    width: getSize(
                      16,
                    ),
                    margin: getMargin(
                      left: 80,
                      top: 8,
                      bottom: 8,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
