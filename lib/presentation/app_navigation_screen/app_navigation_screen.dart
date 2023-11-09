import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              splashOne: "Logo".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.logoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Splash_One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Splash_Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Splash_Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.splashThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Login".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.loginScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Signup_One".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Signup_Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Signup_Three".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Signup_OTP".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.signupOtpScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Signup_Location".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.signupLocationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Home One - Container".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.homeOneContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "All_Category".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.allCategoryScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Best_Product Two".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.bestProductTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Best_Product One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.bestProductOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "My_Cart_Empty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myCartEmptyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Best_Product".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.bestProductScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Home".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.homeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "My_Cart_Date".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myCartDateScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "My_Cart_Product One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myCartProductOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "My_Cart_Product".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.myCartProductScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Payment".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Payment_COD".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.paymentCodScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Payment_Final".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentFinalScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Payment_Popup".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.paymentPopupScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Notification".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.notificationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Wishlist".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.wishlistScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Profile".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Profile_Setting".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSettingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "My_Order".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.myOrderScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "track_Order".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.trackOrderScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Profile_Address".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileAddressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "App_Setting".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.appSettingScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Delivery_to One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.deliveryToOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Deliver_to_Current_location One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.deliverToCurrentLocationOneScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Deliver_to_new_address".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.deliverToNewAddressScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Delivery_to".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.deliveryToScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Deliver_to_Current_location".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.deliverToCurrentLocationScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              splashOne: "Deliver_to_new_address One".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.deliverToNewAddressOneScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String splashOne,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  splashOne,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
