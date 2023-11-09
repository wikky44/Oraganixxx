import '../models/artboardeleven_item_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';

// ignore: must_be_immutable
class ArtboardelevenItemWidget extends StatelessWidget {
  ArtboardelevenItemWidget(
    this.artboardelevenItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArtboardelevenItemModel artboardelevenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgArtboard11,
                height: 159.v,
                width: 251.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgOrangeBanner1,
                height: 159.v,
                width: 253.h,
                radius: BorderRadius.circular(
                  20.h,
                ),
                margin: EdgeInsets.only(left: 15.h),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
