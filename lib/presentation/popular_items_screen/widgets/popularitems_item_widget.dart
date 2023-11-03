import '../models/popularitems_item_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class PopularitemsItemWidget extends StatelessWidget {
  PopularitemsItemWidget(this.popularitemsItemModelObj,
      {this.onTapColumnunsplashzhh3wm2ko3s});

  PopularitemsItemModel popularitemsItemModelObj;

  VoidCallback? onTapColumnunsplashzhh3wm2ko3s;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnunsplashzhh3wm2ko3s?.call();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getVerticalSize(
              192,
            ),
            width: getHorizontalSize(
              164,
            ),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUnsplashzhh3wm2ko3s192x1642,
                  height: getVerticalSize(
                    192,
                  ),
                  width: getHorizontalSize(
                    164,
                  ),
                  radius: BorderRadius.circular(
                    getHorizontalSize(
                      15,
                    ),
                  ),
                  alignment: Alignment.center,
                ),
                CustomImageView(
                  svgPath: ImageConstant.imgFrame19,
                  height: getVerticalSize(
                    19,
                  ),
                  width: getHorizontalSize(
                    20,
                  ),
                  alignment: Alignment.topRight,
                  margin: getMargin(
                    top: 12,
                    right: 12,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 34,
              top: 12,
            ),
            child: Text(
              popularitemsItemModelObj.itemnameTxt,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtPoppinsRegular14Black900,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 44,
              top: 5,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "lbl3".tr,
                    style: TextStyle(
                      color: ColorConstant.orange700,
                      fontSize: getFontSize(
                        16,
                      ),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: "lbl_246_002".tr,
                    style: TextStyle(
                      color: ColorConstant.black900,
                      fontSize: getFontSize(
                        16,
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
        ],
      ),
    );
  }
}
