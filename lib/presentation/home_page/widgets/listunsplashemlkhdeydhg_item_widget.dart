import '../models/listunsplashemlkhdeydhg_item_model.dart';
import 'package:basri_s_application22/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListunsplashemlkhdeydhgItemWidget extends StatelessWidget {
  ListunsplashemlkhdeydhgItemWidget(this.listunsplashemlkhdeydhgItemModelObj,
      {this.onTapColumnunsplashemlkhdeydhg});

  ListunsplashemlkhdeydhgItemModel listunsplashemlkhdeydhgItemModelObj;

  VoidCallback? onTapColumnunsplashemlkhdeydhg;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: GestureDetector(
        onTap: () {
          onTapColumnunsplashemlkhdeydhg?.call();
        },
        child: Padding(
          padding: getPadding(
            right: 16,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: getVerticalSize(
                  235,
                ),
                width: getHorizontalSize(
                  164,
                ),
                child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUnsplashemlkhdeydhg235x164,
                      height: getVerticalSize(
                        235,
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
                      svgPath: ImageConstant.imgDashboard,
                      height: getSize(
                        26,
                      ),
                      width: getSize(
                        26,
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
                  top: 8,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_casual".tr,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: " ",
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_jeans_shoes".tr,
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            14,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 8,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl2".tr,
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
                        text: " ",
                        style: TextStyle(
                          color: ColorConstant.black900,
                          fontSize: getFontSize(
                            16,
                          ),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      TextSpan(
                        text: "lbl_165_002".tr,
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
        ),
      ),
    );
  }
}
