import '../models/orderdetails_item_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';

// ignore: must_be_immutable
class OrderdetailsItemWidget extends StatelessWidget {
  OrderdetailsItemWidget(
    this.orderdetailsItemModelObj, {
    Key? key,
    this.onTapImgDetails,
  }) : super(
          key: key,
        );

  OrderdetailsItemModel orderdetailsItemModelObj;

  VoidCallback? onTapImgDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 11.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 9.h,
              top: 5.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  orderdetailsItemModelObj.date!,
                  style: theme.textTheme.titleMedium,
                ),
                Text(
                  orderdetailsItemModelObj.orderNumber!,
                  style: CustomTextStyles.bodyMedium13,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 4.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgCurrencyRupee,
                      height: 18.adaptSize,
                      width: 18.adaptSize,
                      margin: EdgeInsets.only(
                        top: 2.v,
                        bottom: 3.v,
                      ),
                    ),
                    Text(
                      orderdetailsItemModelObj.amountText!,
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 24.v,
                    width: 67.h,
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            orderdetailsItemModelObj.details!,
                            style: CustomTextStyles.bodyMedium13,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowRightBlack900,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          alignment: Alignment.centerRight,
                          onTap: () {
                            onTapImgDetails!.call();
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
