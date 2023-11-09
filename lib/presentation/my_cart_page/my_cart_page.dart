import 'bloc/my_cart_bloc.dart';import 'models/my_cart_model.dart';import 'package:flutter/material.dart';import 'package:organixxx/core/app_export.dart';import 'package:organixxx/widgets/custom_elevated_button.dart';import 'package:organixxx/widgets/custom_text_form_field.dart';class MyCartPage extends StatelessWidget {const MyCartPage({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<MyCartBloc>(create: (context) => MyCartBloc(MyCartState(myCartModelObj: MyCartModel()))..add(MyCartInitialEvent()), child: MyCartPage()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(resizeToAvoidBottomInset: false, body: Container(width: double.maxFinite, decoration: AppDecoration.fillOnPrimary, child: SizedBox(height: 757.v, width: double.maxFinite, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.bottomCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 48.v), decoration: AppDecoration.fillGray, child: Column(mainAxisSize: MainAxisSize.min, children: [_buildVegetable(context), SizedBox(height: 5.v), _buildDelivery(context), SizedBox(height: 5.v)]))), _buildCart(context), _buildProceed(context)]))))); } 
/// Section Widget
Widget _buildVegetable(BuildContext context) { return Container(padding: EdgeInsets.symmetric(vertical: 5.v), decoration: AppDecoration.outlineBlack9002, child: Column(mainAxisSize: MainAxisSize.min, children: [Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text("lbl_vegetable".tr, style: theme.textTheme.bodyMedium), Padding(padding: EdgeInsets.only(left: 3.h), child: Text("lbl_1_item".tr, style: CustomTextStyles.bodyMediumGray50001)), Spacer(), Padding(padding: EdgeInsets.symmetric(vertical: 2.v), child: _buildThreeThousand(context, threeThousand: "lbl_30_00".tr))])), SizedBox(height: 5.v), Divider(), SizedBox(height: 5.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Row(children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("msg_15_jun_16_00_22_00".tr, style: CustomTextStyles.labelMediumBlack900)), GestureDetector(onTap: () {onTapTxtChange(context);}, child: Padding(padding: EdgeInsets.only(left: 15.h), child: Text("lbl_change".tr, style: CustomTextStyles.labelMediumPrimary)))]))), SizedBox(height: 12.v), Padding(padding: EdgeInsets.only(left: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 46.v, width: 52.h, margin: EdgeInsets.only(bottom: 7.v), child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgTomatoes1, height: 33.v, width: 45.h, alignment: Alignment.center), Align(alignment: Alignment.center, child: Container(height: 46.v, width: 52.h, decoration: BoxDecoration(borderRadius: BorderRadius.circular(5.h), border: Border.all(color: appTheme.gray50001, width: 1.h))))])), CustomImageView(imagePath: ImageConstant.imgArrowRight, height: 48.adaptSize, width: 48.adaptSize, margin: EdgeInsets.only(top: 5.v), onTap: () {onTapImgArrowRight(context);})])), SizedBox(height: 12.v)])); } 
/// Section Widget
Widget _buildDelivery(BuildContext context) { return Container(padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 10.v), decoration: AppDecoration.outlineBlack9002, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Padding(padding: EdgeInsets.only(bottom: 1.v), child: Text("lbl_subtotal".tr, style: CustomTextStyles.bodySmall12)), _buildThreeThousand(context, threeThousand: "lbl_30_00".tr)])), SizedBox(height: 6.v), SizedBox(height: 30.v, width: 336.h, child: Stack(alignment: Alignment.topRight, children: [BlocSelector<MyCartBloc, MyCartState, TextEditingController?>(selector: (state) => state.deliveryController, builder: (context, deliveryController) {return CustomTextFormField(width: 335.h, controller: deliveryController, hintText: "lbl_delivery".tr, textInputAction: TextInputAction.done, alignment: Alignment.center, borderDecoration: TextFormFieldStyleHelper.underLineLightGreen);}), Align(alignment: Alignment.topRight, child: Text("lbl_free".tr, style: CustomTextStyles.bodySmallPrimary12))])), SizedBox(height: 10.v), Padding(padding: EdgeInsets.only(left: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 26.v, width: 81.h, child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topLeft, child: Text("lbl_grand_total".tr, style: CustomTextStyles.labelLargeBlack900SemiBold)), Align(alignment: Alignment.bottomCenter, child: Text("msg_inclusive_of_all".tr, style: CustomTextStyles.bodySmall8))])), Container(height: 18.v, width: 46.h, margin: EdgeInsets.only(bottom: 8.v), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerRight, child: Text("lbl_30_00".tr, style: CustomTextStyles.labelLargeBlack900SemiBold)), CustomImageView(imagePath: ImageConstant.imgCurrencyRupee, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerLeft)]))])), SizedBox(height: 2.v)])); } 
/// Section Widget
Widget _buildCart(BuildContext context) { return Align(alignment: Alignment.topCenter, child: Container(padding: EdgeInsets.symmetric(vertical: 12.v), decoration: AppDecoration.outlineBlack9002, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.end, children: [SizedBox(height: 20.v), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 20.h), child: Text("lbl_cart".tr, style: theme.textTheme.headlineSmall))), Divider(), SizedBox(height: 9.v), Padding(padding: EdgeInsets.symmetric(horizontal: 20.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text("msg_delivering_to_kakkanad".tr, style: CustomTextStyles.bodySmall11), GestureDetector(onTap: () {onTapTxtChange1(context);}, child: Text("lbl_change".tr, style: CustomTextStyles.labelMediumPrimary))]))]))); } 
/// Section Widget
Widget _buildProceed(BuildContext context) { return Align(alignment: Alignment.bottomCenter, child: Container(width: double.maxFinite, margin: EdgeInsets.only(top: 699.v), padding: EdgeInsets.fromLTRB(18.h, 6.v, 18.h, 5.v), decoration: AppDecoration.outlineLightGreen, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Container(height: 38.v, width: 84.h, margin: EdgeInsets.only(top: 1.v, bottom: 5.v), child: Stack(alignment: Alignment.bottomCenter, children: [Align(alignment: Alignment.topCenter, child: Text("lbl_30_00".tr, style: CustomTextStyles.titleMediumSemiBold18)), Align(alignment: Alignment.bottomCenter, child: Text("lbl_total_amount".tr, style: CustomTextStyles.labelLargeGray50001)), CustomImageView(imagePath: ImageConstant.imgCurrencyRupee, height: 21.v, width: 22.h, alignment: Alignment.topLeft, margin: EdgeInsets.only(top: 3.v))])), CustomElevatedButton(width: 113.h, text: "lbl_proceed".tr, margin: EdgeInsets.only(right: 3.h, bottom: 1.v), buttonStyle: CustomButtonStyles.outlineBlack, buttonTextStyle: CustomTextStyles.titleLargeOnPrimarySemiBold, onPressed: () {onTapProceed(context);})]))); } 
/// Common widget
Widget _buildThreeThousand(BuildContext context, {required String threeThousand, }) { return SizedBox(height: 18.v, width: 45.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerRight, child: Text(threeThousand, style: CustomTextStyles.bodySmall12.copyWith(color: appTheme.black900))), CustomImageView(imagePath: ImageConstant.imgCurrencyRupee, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerLeft)])); } 
/// Navigates to the myCartDateScreen when the action is triggered.
onTapTxtChange(BuildContext context) { NavigatorService.pushNamed(AppRoutes.myCartDateScreen, ); } 
/// Navigates to the myCartProductOneScreen when the action is triggered.
onTapImgArrowRight(BuildContext context) { NavigatorService.pushNamed(AppRoutes.myCartProductOneScreen, ); } 
/// Navigates to the deliveryToOneScreen when the action is triggered.
onTapTxtChange1(BuildContext context) { NavigatorService.pushNamed(AppRoutes.deliveryToOneScreen, ); } 
/// Navigates to the paymentScreen when the action is triggered.
onTapProceed(BuildContext context) { NavigatorService.pushNamed(AppRoutes.paymentScreen, ); } 
 }