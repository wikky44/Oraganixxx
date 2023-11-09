import '../models/bannerbiggone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';

// ignore: must_be_immutable
class BannerbiggoneItemWidget extends StatelessWidget {
  BannerbiggoneItemWidget(
    this.bannerbiggoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BannerbiggoneItemModel bannerbiggoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgBannerBigg1,
      height: 135.v,
      width: 335.h,
      radius: BorderRadius.circular(
        5.h,
      ),
    );
  }
}
