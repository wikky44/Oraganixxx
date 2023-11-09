import 'bloc/payment_popup_bloc.dart';
import 'models/payment_popup_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';

class PaymentPopupScreen extends StatelessWidget {
  const PaymentPopupScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentPopupBloc>(
      create: (context) => PaymentPopupBloc(PaymentPopupState(
        paymentPopupModelObj: PaymentPopupModel(),
      ))
        ..add(PaymentPopupInitialEvent()),
      child: PaymentPopupScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<PaymentPopupBloc, PaymentPopupState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup8,
                    height: 88.adaptSize,
                    width: 88.adaptSize,
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(right: 57.h),
                  ),
                  SizedBox(height: 18.v),
                  Text(
                    "lbl_thank_you".tr,
                    style: CustomTextStyles.titleLargeBlack900,
                  ),
                  Text(
                    "msg_your_order_is_confirmed".tr,
                    style: theme.textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
