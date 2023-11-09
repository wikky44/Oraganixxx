import 'bloc/deliver_to_new_address_bloc.dart';
import 'models/deliver_to_new_address_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';
import 'package:organixxx/widgets/app_bar/appbar_leading_image.dart';
import 'package:organixxx/widgets/app_bar/appbar_subtitle.dart';
import 'package:organixxx/widgets/app_bar/custom_app_bar.dart';
import 'package:organixxx/widgets/custom_drop_down.dart';
import 'package:organixxx/widgets/custom_elevated_button.dart';
import 'package:organixxx/widgets/custom_radio_button.dart';
import 'package:organixxx/widgets/custom_text_form_field.dart';

class DeliverToNewAddressScreen extends StatelessWidget {
  const DeliverToNewAddressScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<DeliverToNewAddressBloc>(
      create: (context) => DeliverToNewAddressBloc(DeliverToNewAddressState(
        deliverToNewAddressModelObj: DeliverToNewAddressModel(),
      ))
        ..add(DeliverToNewAddressInitialEvent()),
      child: DeliverToNewAddressScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              _buildGroup339(context),
              SizedBox(height: 19.v),
              _buildAddress(context),
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
  Widget _buildGroup339(BuildContext context) {
    return BlocBuilder<DeliverToNewAddressBloc, DeliverToNewAddressState>(
      builder: (context, state) {
        return state.deliverToNewAddressModelObj!.radioList.isNotEmpty
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
                      value:
                          state.deliverToNewAddressModelObj?.radioList[0] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<DeliverToNewAddressBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20.h, 17.v, 213.h, 17.v),
                    child: CustomRadioButton(
                      text: "lbl_new_adderss".tr,
                      value:
                          state.deliverToNewAddressModelObj?.radioList[2] ?? "",
                      groupValue: state.radioGroup,
                      onChange: (value) {
                        context
                            .read<DeliverToNewAddressBloc>()
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

  /// Section Widget
  Widget _buildAddress(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 21.v,
      ),
      decoration: AppDecoration.fillOnPrimary,
      child: Column(
        children: [
          BlocSelector<DeliverToNewAddressBloc, DeliverToNewAddressState,
              TextEditingController?>(
            selector: (state) => state.addressController,
            builder: (context, addressController) {
              return CustomTextFormField(
                controller: addressController,
                hintText: "lbl_address_line_1".tr,
              );
            },
          ),
          SizedBox(height: 16.v),
          BlocSelector<DeliverToNewAddressBloc, DeliverToNewAddressState,
              TextEditingController?>(
            selector: (state) => state.addressController1,
            builder: (context, addressController1) {
              return CustomTextFormField(
                controller: addressController1,
                hintText: "lbl_address_line_2".tr,
                textInputAction: TextInputAction.done,
              );
            },
          ),
          SizedBox(height: 16.v),
          BlocSelector<DeliverToNewAddressBloc, DeliverToNewAddressState,
              DeliverToNewAddressModel?>(
            selector: (state) => state.deliverToNewAddressModelObj,
            builder: (context, deliverToNewAddressModelObj) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdropdown,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                hintText: "lbl_city".tr,
                items: deliverToNewAddressModelObj?.dropdownItemList ?? [],
                onChanged: (value) {
                  context
                      .read<DeliverToNewAddressBloc>()
                      .add(ChangeDropDownEvent(value: value));
                },
              );
            },
          ),
          SizedBox(height: 16.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BlocSelector<DeliverToNewAddressBloc, DeliverToNewAddressState,
                  DeliverToNewAddressModel?>(
                selector: (state) => state.deliverToNewAddressModelObj,
                builder: (context, deliverToNewAddressModelObj) {
                  return CustomDropDown(
                    width: 159.h,
                    icon: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 13.v, 6.h, 13.v),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgArrowdropdown,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    hintText: "lbl_state".tr,
                    items: deliverToNewAddressModelObj?.dropdownItemList1 ?? [],
                    onChanged: (value) {
                      context
                          .read<DeliverToNewAddressBloc>()
                          .add(ChangeDropDown1Event(value: value));
                    },
                  );
                },
              ),
              SizedBox(
                height: 50.v,
                width: 160.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 23.h),
                        child: Text(
                          "lbl_pincode".tr,
                          style: CustomTextStyles.bodyLargeGreen100,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 50.v,
                        width: 160.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            15.h,
                          ),
                          border: Border.all(
                            color: theme.colorScheme.primary,
                            width: 1.h,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
