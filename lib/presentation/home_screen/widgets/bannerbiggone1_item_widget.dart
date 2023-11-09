import '../models/bannerbiggone1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';

// ignore: must_be_immutable
class Bannerbiggone1ItemWidget extends StatelessWidget {
  Bannerbiggone1ItemWidget(
    this.bannerbiggone1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Bannerbiggone1ItemModel bannerbiggone1ItemModelObj;

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
