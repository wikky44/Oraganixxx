import 'bloc/my_cart_date_bloc.dart';
import 'models/my_cart_date_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';
import 'package:organixxx/widgets/app_bar/appbar_leading_image.dart';
import 'package:organixxx/widgets/app_bar/appbar_subtitle.dart';
import 'package:organixxx/widgets/app_bar/custom_app_bar.dart';
import 'package:organixxx/widgets/custom_elevated_button.dart';
import 'package:organixxx/widgets/custom_radio_button.dart';

class MyCartDateScreen extends StatelessWidget {
  const MyCartDateScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MyCartDateBloc>(
      create: (context) => MyCartDateBloc(MyCartDateState(
        myCartDateModelObj: MyCartDateModel(),
      ))
        ..add(MyCartDateInitialEvent()),
      child: MyCartDateScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(top: 70.v),
          padding: EdgeInsets.symmetric(vertical: 16.v),
          decoration: AppDecoration.fillGray,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 3.v),
              _buildSun(context),
              SizedBox(height: 11.v),
              _buildGroup346(context),
              Spacer(),
              CustomElevatedButton(
                text: "lbl_continue".tr,
                margin: EdgeInsets.symmetric(horizontal: 53.h),
                buttonStyle: CustomButtonStyles.fillPrimaryTL5,
                buttonTextStyle: CustomTextStyles.titleLargeOnPrimary,
              ),
            ],
          ),
        ),
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
        text: "lbl_select_slot".tr,
        margin: EdgeInsets.only(
          top: 41.v,
          bottom: 19.v,
        ),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildSun(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "lbl_sun".tr,
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "lbl_mon".tr,
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "lbl_tue".tr,
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "lbl_wed".tr,
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "lbl_thu".tr,
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "lbl_fri".tr,
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
                Text(
                  "lbl_sat".tr,
                  style: CustomTextStyles.bodyLargeGray50001,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              right: 25.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "lbl_12".tr,
                  style: CustomTextStyles.bodyLarge16,
                ),
                Spacer(
                  flex: 23,
                ),
                Text(
                  "lbl_13".tr,
                  style: CustomTextStyles.bodyLarge16,
                ),
                Spacer(
                  flex: 18,
                ),
                Text(
                  "lbl_14".tr,
                  style: CustomTextStyles.bodyLarge16,
                ),
                Spacer(
                  flex: 20,
                ),
                SizedBox(
                  height: 24.v,
                  width: 22.h,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 22.adaptSize,
                          width: 22.adaptSize,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(
                              11.h,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_15".tr,
                          style: CustomTextStyles.bodyLargeOnPrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(
                  flex: 18,
                ),
                Text(
                  "lbl_16".tr,
                  style: CustomTextStyles.bodyLarge16,
                ),
                Spacer(
                  flex: 19,
                ),
                Text(
                  "lbl_17".tr,
                  style: CustomTextStyles.bodyLarge16,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "lbl_18".tr,
                    style: CustomTextStyles.bodyLarge16,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Divider(),
          SizedBox(height: 13.v),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_today".tr,
                  style: CustomTextStyles.bodyMediumPrimary,
                ),
                TextSpan(
                  text: "msg_wednesday_june".tr,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroup346(BuildContext context) {
    return BlocBuilder<MyCartDateBloc, MyCartDateState>(
      builder: (context, state) {
        return state.myCartDateModelObj!.radioList.isNotEmpty
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 17.v,
                      right: 225.h,
                    ),
                    child: CustomRadioButton(
                      text: "lbl_07_00_13_00".tr,
                      value: state.myCartDateModelObj?.radioList[0] ?? "",
                      groupValue: state.radioGroup,
                      textStyle: theme.textTheme.bodyMedium,
                      onChange: (value) {
                        context
                            .read<MyCartDateBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.h, 15.v, 225.h, 15.v),
                    child: CustomRadioButton(
                      text: "lbl_13_00_22_00".tr,
                      value: state.myCartDateModelObj?.radioList[1] ?? "",
                      groupValue: state.radioGroup,
                      textStyle: theme.textTheme.bodyMedium,
                      onChange: (value) {
                        context
                            .read<MyCartDateBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                ],
              )
            : Container();
      },
    );
  }
}
