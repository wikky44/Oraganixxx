import 'bloc/best_product_two_bloc.dart';import 'models/best_product_two_model.dart';import 'package:flutter/material.dart';import 'package:organixxx/core/app_export.dart';import 'package:organixxx/widgets/app_bar/appbar_leading_image.dart';import 'package:organixxx/widgets/app_bar/appbar_title_searchview.dart';import 'package:organixxx/widgets/app_bar/custom_app_bar.dart';import 'package:organixxx/widgets/custom_icon_button.dart';class BestProductTwoScreen extends StatelessWidget {const BestProductTwoScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<BestProductTwoBloc>(create: (context) => BestProductTwoBloc(BestProductTwoState(bestProductTwoModelObj: BestProductTwoModel()))..add(BestProductTwoInitialEvent()), child: BestProductTwoScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return SafeArea(child: Scaffold(appBar: _buildAppBar(context), body: SizedBox(width: mediaQueryData.size.width, child: SingleChildScrollView(padding: EdgeInsets.only(top: 8.v), child: Padding(padding: EdgeInsets.only(left: 6.h, right: 19.h, bottom: 5.v), child: Column(children: [Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 14.h), child: Text("msg_best_selling_products".tr, style: CustomTextStyles.titleLargeSemiBold))), SizedBox(height: 14.v), _buildVectorOne1(context), SizedBox(height: 25.v), _buildVectorThree1(context), SizedBox(height: 25.v), _buildVectorFive1(context), SizedBox(height: 25.v), _buildVectorSix1(context), SizedBox(height: 25.v), _buildVectorNine1(context), SizedBox(height: 25.v), _buildVectorTen1(context), SizedBox(height: 25.v), _buildVectorThirteen1(context)])))))); } 
/// Section Widget
PreferredSizeWidget _buildAppBar(BuildContext context) { return CustomAppBar(height: 89.v, leadingWidth: 35.h, leading: AppbarLeadingImage(imagePath: ImageConstant.imgIconlyLightOu, margin: EdgeInsets.only(left: 21.h, top: 17.v, bottom: 15.v), onTap: () {onTapIconlyLightOu(context);}), title: BlocSelector<BestProductTwoBloc, BestProductTwoState, TextEditingController?>(selector: (state) => state.searchController, builder: (context, searchController) {return AppbarTitleSearchview(margin: EdgeInsets.only(left: 21.h), hintText: "msg_search_your_needs".tr, controller: searchController);})); } 
/// Section Widget
Widget _buildVectorOne1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 13.h, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(padding: EdgeInsets.symmetric(vertical: 6.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.center, children: [Container(width: 149.h, margin: EdgeInsets.only(right: 4.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 7.v), child: _buildVectorTwo(context, twentyFive: "lbl_25".tr)), CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize)])), CustomImageView(imagePath: ImageConstant.imgTomatoes1, height: 93.v, width: 127.h), SizedBox(height: 5.v), Align(alignment: Alignment.centerLeft, child: Container(height: 49.v, width: 114.h, margin: EdgeInsets.only(left: 9.h), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topCenter, child: SizedBox(width: 111.h, child: Text("msg_fresh_organic_tomato".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_30".tr, style: theme.textTheme.labelLarge))), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 1.v))]))), SizedBox(height: 11.v), Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), onTap: () {onTapBtnIconButton(context);}, child: CustomImageView(imagePath: ImageConstant.imgGroup3))])), SizedBox(height: 3.v)])), SizedBox(height: 228.v, width: 160.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.only(left: 5.h), padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), _buildVectorTwo(context, twentyFive: "lbl_25".tr), SizedBox(height: 98.v), Container(height: 49.v, width: 112.h, margin: EdgeInsets.only(left: 9.h), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topCenter, child: SizedBox(width: 109.h, child: Text("msg_fresh_organic_oragne".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_50".tr, style: theme.textTheme.labelLarge))), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 1.v))])), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))]))), CustomImageView(imagePath: ImageConstant.imgOrangeJuicyRi, height: 95.v, width: 160.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 34.v)), CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 10.v, right: 6.h))]))])); } 
/// Section Widget
Widget _buildVectorThree1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 14.h, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 12.h), padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 5.h), child: _buildVectorFour(context, twentyFive: "lbl_25".tr)), SizedBox(height: 8.v), CustomImageView(imagePath: ImageConstant.imgCarrot1, height: 80.v, width: 134.h, alignment: Alignment.center), SizedBox(height: 8.v), Container(width: 104.h, margin: EdgeInsets.only(left: 12.h), child: Text("msg_fresh_organic_carrot".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall)), Padding(padding: EdgeInsets.only(left: 9.h), child: _buildEighty(context, eighty: "lbl_60".tr)), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))]))), Expanded(child: Container(margin: EdgeInsets.only(left: 12.h), padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 5.h), child: _buildVectorFour(context, twentyFive: "lbl_25".tr)), CustomImageView(imagePath: ImageConstant.imgApple1, height: 87.v, width: 127.h, alignment: Alignment.center), SizedBox(height: 8.v), Container(width: 101.h, margin: EdgeInsets.only(left: 12.h), child: Text("msg_fresh_organic_apple".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall)), Padding(padding: EdgeInsets.only(left: 9.h), child: _buildEighty(context, eighty: "lbl_80".tr)), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))])))])); } 
/// Section Widget
Widget _buildVectorFive1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 14.h, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 12.h), padding: EdgeInsets.symmetric(vertical: 6.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [Padding(padding: EdgeInsets.only(right: 5.h), child: _buildVectorFour(context, twentyFive: "lbl_25".tr)), CustomImageView(imagePath: ImageConstant.imgMeat1, height: 93.v, width: 131.h, alignment: Alignment.center), SizedBox(height: 5.v), Container(height: 48.v, width: 57.h, margin: EdgeInsets.only(left: 9.h), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topRight, child: SizedBox(width: 54.h, child: Text("msg_fresh_meat_500g".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_100".tr, style: theme.textTheme.labelLarge))), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 1.v))])), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))]))), SizedBox(height: 3.v)]))), Expanded(child: Container(margin: EdgeInsets.only(left: 12.h), padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 151.v, width: 147.h, child: Stack(alignment: Alignment.bottomCenter, children: [Padding(padding: EdgeInsets.only(top: 4.v), child: _buildVectorTwo(context, twentyFive: "lbl_25".tr)), Align(alignment: Alignment.bottomCenter, child: SizedBox(width: 133.h, child: Text("msg_fresh_organic_watermelon_500g".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall))), CustomImageView(imagePath: ImageConstant.imgWatermelon1, height: 112.adaptSize, width: 112.adaptSize, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 10.v)), CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.topRight)])), Container(height: 17.v, width: 27.h, margin: EdgeInsets.only(left: 9.h), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerRight, child: Text("lbl_20".tr, style: theme.textTheme.labelLarge)), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerLeft)])), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))])))])); } 
/// Section Widget
Widget _buildVectorSix1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 14.h, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 12.h), padding: EdgeInsets.symmetric(vertical: 8.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 5.h), child: _buildVectorFour(context, twentyFive: "lbl_25".tr)), SizedBox(height: 3.v), CustomImageView(imagePath: ImageConstant.img9d85cc2af89dd5b, height: 93.v, width: 74.h, margin: EdgeInsets.only(left: 36.h)), Container(height: 48.v, width: 64.h, margin: EdgeInsets.only(left: 9.h), child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.topCenter, child: SizedBox(width: 61.h, child: Text("msg_fresh_honey_500g".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_150".tr, style: theme.textTheme.labelLarge))), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 1.v))])), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))]))), Expanded(child: Container(margin: EdgeInsets.only(left: 12.h), padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [SizedBox(height: 151.v, width: 148.h, child: Stack(alignment: Alignment.bottomLeft, children: [Padding(padding: EdgeInsets.only(top: 3.v), child: _buildVectorTwo(context, twentyFive: "lbl_25".tr)), Align(alignment: Alignment.bottomLeft, child: Container(width: 51.h, margin: EdgeInsets.only(left: 12.h), child: Text("msg_ripple_tea_500g".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall))), CustomImageView(imagePath: ImageConstant.imgRipplePreDustTea250g, height: 110.v, width: 98.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 16.v)), CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.topRight)])), Padding(padding: EdgeInsets.only(left: 9.h), child: _buildOneHundredTwenty(context, oneHundredTwenty: "lbl_120".tr)), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))])))])); } 
/// Section Widget
Widget _buildVectorNine1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 14.h, right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 12.h), padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 5.h), child: _buildVectorFour(context, twentyFive: "lbl_25".tr)), SizedBox(height: 7.v), CustomImageView(imagePath: ImageConstant.imgFish00011, height: 80.v, width: 111.h, alignment: Alignment.center), SizedBox(height: 8.v), Container(width: 48.h, margin: EdgeInsets.only(left: 12.h), child: Text("msg_fresh_fish_500g".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall)), Padding(padding: EdgeInsets.only(left: 9.h), child: _buildOneHundredFifty(context, oneHundredFifty: "lbl_100".tr)), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))]))), Expanded(child: Container(margin: EdgeInsets.only(left: 12.h), padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), Container(width: 147.h, margin: EdgeInsets.only(right: 6.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(top: 1.v, bottom: 5.v), child: _buildVectorTwo(context, twentyFive: "lbl_25".tr)), CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize)])), SizedBox(height: 4.v), CustomImageView(imagePath: ImageConstant.imgRedBullEnergyDrink350Ml, height: 83.adaptSize, width: 83.adaptSize, alignment: Alignment.center), SizedBox(height: 4.v), Padding(padding: EdgeInsets.only(left: 12.h), child: Text("lbl_red_bull".tr, style: theme.textTheme.bodySmall)), SizedBox(height: 16.v), Padding(padding: EdgeInsets.only(left: 9.h), child: _buildOneHundredTwenty(context, oneHundredTwenty: "lbl_120".tr)), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))])))])); } 
/// Section Widget
Widget _buildVectorTen1(BuildContext context) { return Padding(padding: EdgeInsets.only(left: 14.h), child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Expanded(child: Container(margin: EdgeInsets.only(right: 12.h), padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 2.v), SizedBox(height: 167.v, width: 147.h, child: Stack(alignment: Alignment.bottomLeft, children: [Padding(padding: EdgeInsets.only(top: 1.v), child: _buildVectorTwo(context, twentyFive: "lbl_25".tr)), Align(alignment: Alignment.bottomLeft, child: Container(width: 70.h, margin: EdgeInsets.only(left: 12.h, bottom: 17.v), child: Text("msg_fresh_cashew_500g2".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall))), Align(alignment: Alignment.bottomLeft, child: Padding(padding: EdgeInsets.only(left: 21.h), child: Text("lbl_400".tr, style: theme.textTheme.labelLarge))), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(left: 9.h, bottom: 1.v)), CustomImageView(imagePath: ImageConstant.imgCashews1, height: 122.adaptSize, width: 122.adaptSize, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 10.v)), CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.topRight)])), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))]))), Expanded(child: Container(margin: EdgeInsets.only(left: 12.h), padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), Row(crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(bottom: 98.v), child: _buildVectorTwo(context, twentyFive: "lbl_25".tr)), CustomImageView(imagePath: ImageConstant.imgVillainHydraP, height: 93.v, width: 74.h, margin: EdgeInsets.only(left: 1.h, top: 23.v)), CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize, margin: EdgeInsets.only(left: 9.h, bottom: 92.v))]), Container(width: 62.h, margin: EdgeInsets.only(left: 12.h), child: Text("msg_villain_hydra_100g".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall)), Container(height: 17.v, width: 35.h, margin: EdgeInsets.only(left: 9.h), child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerRight, child: Text("lbl_550".tr, style: theme.textTheme.labelLarge)), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerLeft)])), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.center, child: Container(padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))])))])); } 
/// Section Widget
Widget _buildVectorThirteen1(BuildContext context) { return Padding(padding: EdgeInsets.only(right: 1.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 228.v, width: 178.h, child: Stack(alignment: Alignment.topCenter, children: [Align(alignment: Alignment.center, child: Container(margin: EdgeInsets.symmetric(horizontal: 11.h), padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.center, children: [SizedBox(height: 3.v), _buildVectorTwo(context, twentyFive: "lbl_25".tr), SizedBox(height: 98.v), Container(width: 134.h, margin: EdgeInsets.only(left: 5.h), child: Text("msg_fresh_organic_green".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall)), _buildOneHundredFifty(context, oneHundredFifty: "lbl_150".tr), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.only(left: 12.h, right: 8.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))]))), CustomImageView(imagePath: ImageConstant.imgGreenFreshApp, height: 104.v, width: 178.h, alignment: Alignment.topCenter, margin: EdgeInsets.only(top: 32.v)), CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize, alignment: Alignment.topRight, margin: EdgeInsets.only(top: 9.v, right: 15.h))])), Container(padding: EdgeInsets.symmetric(vertical: 9.v), decoration: AppDecoration.outlineBlack.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10), child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, children: [Padding(padding: EdgeInsets.only(right: 5.h), child: _buildVectorFour(context, twentyFive: "lbl_25".tr)), SizedBox(height: 1.v), CustomImageView(imagePath: ImageConstant.imgCabbage1, height: 78.v, width: 106.h, alignment: Alignment.center), SizedBox(height: 16.v), Container(width: 119.h, margin: EdgeInsets.only(left: 12.h), child: Text("msg_fresh_organic_cabbage_1".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodySmall)), Padding(padding: EdgeInsets.only(left: 9.h), child: _buildEighty(context, eighty: "lbl_50".tr)), SizedBox(height: 11.v), Align(alignment: Alignment.center, child: Container(width: 129.h, margin: EdgeInsets.symmetric(horizontal: 12.h), child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [SizedBox(height: 27.v, width: 65.h, child: Stack(alignment: Alignment.center, children: [Align(alignment: Alignment.topCenter, child: Container(margin: EdgeInsets.only(top: 1.v), padding: EdgeInsets.symmetric(horizontal: 20.h), decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder2), child: Container(height: 24.v, width: 23.h, decoration: BoxDecoration(color: appTheme.blueGray100, border: Border.all(color: appTheme.gray50001, width: 1.h))))), Padding(padding: EdgeInsets.only(left: 5.h, right: 4.h), child: _buildText(context, text: "lbl".tr, one: "lbl_1".tr, text1: "lbl2".tr))])), CustomIconButton(height: 24.adaptSize, width: 24.adaptSize, padding: EdgeInsets.all(4.h), child: CustomImageView(imagePath: ImageConstant.imgGroup3))])))]))])); } 
/// Common widget
Widget _buildVectorTwo(BuildContext context, {required String twentyFive, }) { return SizedBox(height: 18.v, width: 39.h, child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgVector1, height: 18.v, width: 39.h, alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 3.h), child: Text(twentyFive, style: theme.textTheme.labelMedium!.copyWith(color: theme.colorScheme.onPrimary))))])); } 
/// Common widget
Widget _buildText(BuildContext context, {required String text, required String one, required String text1, }) { return SizedBox(width: 56.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Text(text, style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.black900)), Padding(padding: EdgeInsets.only(top: 2.v), child: Text(one, style: CustomTextStyles.bodyLarge16.copyWith(color: appTheme.black900))), Text(text1, style: theme.textTheme.bodyLarge!.copyWith(color: appTheme.black900))])); } 
/// Common widget
Widget _buildVectorFour(BuildContext context, {required String twentyFive, }) { return SizedBox(width: 148.h, child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [Container(height: 18.v, width: 39.h, margin: EdgeInsets.only(top: 3.v, bottom: 2.v), child: Stack(alignment: Alignment.centerLeft, children: [CustomImageView(imagePath: ImageConstant.imgVector1, height: 18.v, width: 39.h, alignment: Alignment.center), Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 3.h), child: Text(twentyFive, style: theme.textTheme.labelMedium!.copyWith(color: theme.colorScheme.onPrimary))))])), CustomImageView(imagePath: ImageConstant.imgLocation, height: 24.adaptSize, width: 24.adaptSize)])); } 
/// Common widget
Widget _buildEighty(BuildContext context, {required String eighty, }) { return SizedBox(height: 17.v, width: 28.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerRight, child: Text(eighty, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.primary))), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerLeft)])); } 
/// Common widget
Widget _buildOneHundredTwenty(BuildContext context, {required String oneHundredTwenty, }) { return SizedBox(height: 18.v, width: 31.h, child: Stack(alignment: Alignment.bottomLeft, children: [Align(alignment: Alignment.centerRight, child: Text(oneHundredTwenty, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.primary))), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.bottomLeft, margin: EdgeInsets.only(bottom: 1.v))])); } 
/// Common widget
Widget _buildOneHundredFifty(BuildContext context, {required String oneHundredFifty, }) { return SizedBox(height: 17.v, width: 32.h, child: Stack(alignment: Alignment.centerLeft, children: [Align(alignment: Alignment.centerRight, child: Text(oneHundredFifty, style: theme.textTheme.labelLarge!.copyWith(color: theme.colorScheme.primary))), CustomImageView(imagePath: ImageConstant.imgLocationPrimary, height: 14.adaptSize, width: 14.adaptSize, alignment: Alignment.centerLeft)])); } 
/// Navigates to the homeOneContainerScreen when the action is triggered.
onTapIconlyLightOu(BuildContext context) { NavigatorService.pushNamed(AppRoutes.homeOneContainerScreen, ); } 
/// Navigates to the bestProductScreen when the action is triggered.
onTapBtnIconButton(BuildContext context) { NavigatorService.pushNamed(AppRoutes.bestProductScreen, ); } 
 }