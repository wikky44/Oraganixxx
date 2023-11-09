import 'bloc/payment_bloc.dart';
import 'models/payment_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';
import 'package:organixxx/widgets/app_bar/appbar_leading_image.dart';
import 'package:organixxx/widgets/app_bar/appbar_subtitle.dart';
import 'package:organixxx/widgets/app_bar/custom_app_bar.dart';
import 'package:organixxx/widgets/custom_elevated_button.dart';
import 'package:organixxx/widgets/custom_radio_button.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<PaymentBloc>(
      create: (context) => PaymentBloc(PaymentState(
        paymentModelObj: PaymentModel(),
      ))
        ..add(PaymentInitialEvent()),
      child: PaymentScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          height: 665.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 37.v),
                  decoration: AppDecoration.fillGray,
                  child: _buildCashOnDelivery(context),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 124.v),
                  child: SizedBox(
                    width: 373.h,
                    child: Divider(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 179.v),
                  child: SizedBox(
                    width: 373.h,
                    child: Divider(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 233.v),
                  child: SizedBox(
                    width: 373.h,
                    child: Divider(),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildNext(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 37.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgIconlyLightOu,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 43.v,
          bottom: 24.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "lbl_payment".tr,
        margin: EdgeInsets.only(
          top: 44.v,
          bottom: 16.v,
        ),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildCashOnDelivery(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocSelector<PaymentBloc, PaymentState, String?>(
            selector: (state) => state.radioGroup,
            builder: (context, radioGroup) {
              return Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: CustomRadioButton(
                  text: "msg_cash_on_delivery".tr,
                  value: "msg_cash_on_delivery".tr ?? "",
                  groupValue: radioGroup,
                  onChange: (value) {
                    context
                        .read<PaymentBloc>()
                        .add(ChangeRadioButtonEvent(value: value));
                  },
                ),
              );
            },
          ),
          SizedBox(height: 14.v),
          Divider(),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 20.h),
            child: BlocBuilder<PaymentBloc, PaymentState>(
              builder: (context, state) {
                return state.paymentModelObj!.radioList.isNotEmpty
                    ? Column(
                        children: [
                          CustomRadioButton(
                            text: "msg_debit_credit_card".tr,
                            value: state.paymentModelObj?.radioList[0] ?? "",
                            groupValue: state.radioGroup1,
                            onChange: (value) {
                              context
                                  .read<PaymentBloc>()
                                  .add(ChangeRadioButton1Event(value: value));
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 33.v,
                              right: 55.h,
                            ),
                            child: CustomRadioButton(
                              text: "lbl_net_banking".tr,
                              value: state.paymentModelObj?.radioList[1] ?? "",
                              groupValue: state.radioGroup1,
                              onChange: (value) {
                                context
                                    .read<PaymentBloc>()
                                    .add(ChangeRadioButton1Event(value: value));
                              },
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              top: 28.v,
                              right: 127.h,
                            ),
                            child: CustomRadioButton(
                              text: "lbl_upi".tr,
                              value: state.paymentModelObj?.radioList[2] ?? "",
                              groupValue: state.radioGroup1,
                              onChange: (value) {
                                context
                                    .read<PaymentBloc>()
                                    .add(ChangeRadioButton1Event(value: value));
                              },
                            ),
                          ),
                        ],
                      )
                    : Container();
              },
            ),
          ),
          SizedBox(height: 21.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNext(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 18.h,
        right: 21.h,
        bottom: 11.v,
      ),
      decoration: AppDecoration.outlineLightgreen100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 38.v,
            width: 84.h,
            margin: EdgeInsets.only(
              top: 4.v,
              bottom: 1.v,
            ),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    "lbl_30_00".tr,
                    style: CustomTextStyles.titleMediumSemiBold18,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "lbl_total_amount".tr,
                    style: CustomTextStyles.labelLargeGray50001,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgCurrencyRupee,
                  height: 21.v,
                  width: 22.h,
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(top: 3.v),
                ),
              ],
            ),
          ),
          CustomElevatedButton(
            width: 113.h,
            text: "lbl_next".tr,
            buttonStyle: CustomButtonStyles.outlineBlackTL3,
            buttonTextStyle: CustomTextStyles.titleLargeOnPrimarySemiBold,
          ),
        ],
      ),
    );
  }
}
