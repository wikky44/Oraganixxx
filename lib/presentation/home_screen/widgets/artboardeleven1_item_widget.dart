import '../models/artboardeleven1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';

// ignore: must_be_immutable
class Artboardeleven1ItemWidget extends StatelessWidget {
  Artboardeleven1ItemWidget(
    this.artboardeleven1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Artboardeleven1ItemModel artboardeleven1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: CustomImageView(
        imagePath: artboardeleven1ItemModelObj?.artboardEleven,
        height: 159.v,
        width: 251.h,
        radius: BorderRadius.circular(
          20.h,
        ),
        margin: EdgeInsets.only(right: 104.h),
      ),
    );
  }
}
