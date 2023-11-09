import 'bloc/deliver_to_current_location_one_bloc.dart';
import 'models/deliver_to_current_location_one_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';
import 'package:organixxx/widgets/app_bar/appbar_leading_image.dart';
import 'package:organixxx/widgets/app_bar/appbar_subtitle.dart';
import 'package:organixxx/widgets/app_bar/custom_app_bar.dart';
import 'package:organixxx/widgets/custom_elevated_button.dart';
import 'package:organixxx/widgets/custom_radio_button.dart';

class DeliverToCurrentLocationOneScreen extends StatelessWidget {
  const DeliverToCurrentLocationOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DeliverToCurrentLocationOneBloc>(
      create: (context) =>
          DeliverToCurrentLocationOneBloc(DeliverToCurrentLocationOneState(
        deliverToCurrentLocationOneModelObj: DeliverToCurrentLocationOneModel(),
      ))
            ..add(DeliverToCurrentLocationOneInitialEvent()),
      child: DeliverToCurrentLocationOneScreen(),
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
              _buildGroup352(context),
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
        text: "lbl_deliver_to".tr,
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildGroup352(BuildContext context) {
    return BlocBuilder<DeliverToCurrentLocationOneBloc,
        DeliverToCurrentLocationOneState>(
      builder: (context, state) {
        return state.deliverToCurrentLocationOneModelObj!.radioList.isNotEmpty
            ? Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      top: 19.v,
                      right: 184.h,
                    ),
                    child: CustomRadioButton(
                      text: "msg_current_location".tr,
                      value: state.deliverToCurrentLocationOneModelObj
                              ?.radioList[0] ??
                          "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<DeliverToCurrentLocationOneBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.h, 17.v, 213.h, 17.v),
                    child: CustomRadioButton(
                      text: "lbl_new_adderss".tr,
                      value: state.deliverToCurrentLocationOneModelObj
                              ?.radioList[2] ??
                          "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<DeliverToCurrentLocationOneBloc>()
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
