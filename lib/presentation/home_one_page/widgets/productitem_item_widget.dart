import '../models/productitem_item_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';
import 'package:organixxx/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ProductitemItemWidget extends StatelessWidget {
  ProductitemItemWidget(
    this.productitemItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ProductitemItemModel productitemItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 157.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 11.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomImageView(
                imagePath: productitemItemModelObj?.productImage,
                height: 93.v,
                width: 127.h,
                alignment: Alignment.center,
              ),
              SizedBox(height: 5.v),
              Container(
                width: 111.h,
                margin: EdgeInsets.only(left: 3.h),
                child: Text(
                  productitemItemModelObj.productName!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodySmall,
                ),
              ),
              SizedBox(
                height: 17.v,
                width: 27.h,
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        productitemItemModelObj.productQuantity!,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLocationPrimary,
                      height: 14.adaptSize,
                      width: 14.adaptSize,
                      alignment: Alignment.centerLeft,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 11.v),
              Container(
                width: 129.h,
                margin: EdgeInsets.symmetric(horizontal: 3.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 27.v,
                      width: 65.h,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 20.h),
                              decoration: AppDecoration.outlineGray.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder2,
                              ),
                              child: Container(
                                height: 24.v,
                                width: 23.h,
                                decoration: BoxDecoration(
                                  color: appTheme.blueGray100,
                                  border: Border.all(
                                    color: appTheme.gray50001,
                                    width: 1.h,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              width: 56.h,
                              margin: EdgeInsets.only(
                                left: 5.h,
                                right: 4.h,
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    productitemItemModelObj.productMinus!,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 2.v),
                                    child: Text(
                                      productitemItemModelObj.productNumber!,
                                      style: CustomTextStyles.bodyLarge16,
                                    ),
                                  ),
                                  Text(
                                    productitemItemModelObj.productPlus!,
                                    style: theme.textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup3,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 7.v),
            ],
          ),
        ),
      ),
    );
  }
}
