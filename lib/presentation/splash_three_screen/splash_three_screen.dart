import 'bloc/splash_three_bloc.dart';import 'models/splash_three_model.dart';import 'package:flutter/material.dart';import 'package:organixxx/core/app_export.dart';import 'package:organixxx/widgets/custom_elevated_button.dart';import 'package:smooth_page_indicator/smooth_page_indicator.dart';class SplashThreeScreen extends StatelessWidget {const SplashThreeScreen({Key? key}) : super(key: key);

static Widget builder(BuildContext context) { return BlocProvider<SplashThreeBloc>(create: (context) => SplashThreeBloc(SplashThreeState(splashThreeModelObj: SplashThreeModel()))..add(SplashThreeInitialEvent()), child: SplashThreeScreen()); } 
@override Widget build(BuildContext context) { mediaQueryData = MediaQuery.of(context); return BlocBuilder<SplashThreeBloc, SplashThreeState>(builder: (context, state) {return SafeArea(child: Scaffold(body: SizedBox(width: double.maxFinite, child: Column(children: [SizedBox(height: 406.v, width: double.maxFinite, child: Stack(alignment: Alignment.center, children: [CustomImageView(imagePath: ImageConstant.imgEllipse31, height: 406.v, width: 375.h, alignment: Alignment.center), CustomImageView(imagePath: ImageConstant.imgSplashDoorstep, height: 217.v, width: 328.h, alignment: Alignment.center)])), SizedBox(height: 51.v), Text("msg_fast_doorstep_delivery".tr, style: theme.textTheme.titleMedium), SizedBox(height: 14.v), Container(width: 265.h, margin: EdgeInsets.symmetric(horizontal: 55.h), child: Text("msg_our_delivery_executive".tr, maxLines: 2, overflow: TextOverflow.ellipsis, style: theme.textTheme.bodyMedium)), SizedBox(height: 79.v), SizedBox(height: 8.v, child: AnimatedSmoothIndicator(activeIndex: 0, count: 3, effect: ScrollingDotsEffect(spacing: 4, activeDotColor: theme.colorScheme.primary, dotColor: appTheme.lightGreen100, dotHeight: 8.v, dotWidth: 8.h))), SizedBox(height: 5.v)])), bottomNavigationBar: _buildGetStarted(context)));}); } 
/// Section Widget
Widget _buildGetStarted(BuildContext context) { return CustomElevatedButton(width: 135.h, text: "lbl_get_started".tr, margin: EdgeInsets.only(left: 120.h, right: 120.h, bottom: 59.v), buttonStyle: CustomButtonStyles.fillPrimary, buttonTextStyle: CustomTextStyles.titleMediumOnPrimary, onPressed: () {onTapGetStarted(context);}); } 
/// Navigates to the loginScreen when the action is triggered.
onTapGetStarted(BuildContext context) { NavigatorService.pushNamed(AppRoutes.loginScreen, ); } 
 }