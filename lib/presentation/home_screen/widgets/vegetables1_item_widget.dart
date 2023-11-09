import '../models/vegetables1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';

// ignore: must_be_immutable
class Vegetables1ItemWidget extends StatelessWidget {
  Vegetables1ItemWidget(
    this.vegetables1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Vegetables1ItemModel vegetables1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 96.v,
      width: 84.h,
      margin: EdgeInsets.only(top: 1.v),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 5.h),
              padding: EdgeInsets.symmetric(
                horizontal: 2.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.fillGreen.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 64.v),
                  Text(
                    vegetables1ItemModelObj.vegetables!,
                    style: CustomTextStyles.labelLargeBlack900,
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: vegetables1ItemModelObj?.vegetablesImage,
            height: 60.v,
            width: 84.h,
            alignment: Alignment.topCenter,
            margin: EdgeInsets.only(top: 2.v),
          ),
        ],
      ),
    );
  }
}
