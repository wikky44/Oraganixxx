import 'package:flutter/material.dart';
import 'package:organixxx/presentation/logo_screen/logo_screen.dart';
import 'package:organixxx/presentation/splash_one_screen/splash_one_screen.dart';
import 'package:organixxx/presentation/splash_two_screen/splash_two_screen.dart';
import 'package:organixxx/presentation/splash_three_screen/splash_three_screen.dart';
import 'package:organixxx/presentation/login_screen/login_screen.dart';
import 'package:organixxx/presentation/signup_one_screen/signup_one_screen.dart';
import 'package:organixxx/presentation/signup_two_screen/signup_two_screen.dart';
import 'package:organixxx/presentation/signup_three_screen/signup_three_screen.dart';
import 'package:organixxx/presentation/signup_otp_screen/signup_otp_screen.dart';
import 'package:organixxx/presentation/signup_location_screen/signup_location_screen.dart';
import 'package:organixxx/presentation/home_one_container_screen/home_one_container_screen.dart';
import 'package:organixxx/presentation/all_category_screen/all_category_screen.dart';
import 'package:organixxx/presentation/best_product_two_screen/best_product_two_screen.dart';
import 'package:organixxx/presentation/best_product_one_screen/best_product_one_screen.dart';
import 'package:organixxx/presentation/my_cart_empty_screen/my_cart_empty_screen.dart';
import 'package:organixxx/presentation/best_product_screen/best_product_screen.dart';
import 'package:organixxx/presentation/home_screen/home_screen.dart';
import 'package:organixxx/presentation/my_cart_date_screen/my_cart_date_screen.dart';
import 'package:organixxx/presentation/my_cart_product_one_screen/my_cart_product_one_screen.dart';
import 'package:organixxx/presentation/my_cart_product_screen/my_cart_product_screen.dart';
import 'package:organixxx/presentation/payment_screen/payment_screen.dart';
import 'package:organixxx/presentation/payment_cod_screen/payment_cod_screen.dart';
import 'package:organixxx/presentation/payment_final_screen/payment_final_screen.dart';
import 'package:organixxx/presentation/payment_popup_screen/payment_popup_screen.dart';
import 'package:organixxx/presentation/notification_screen/notification_screen.dart';
import 'package:organixxx/presentation/wishlist_screen/wishlist_screen.dart';
import 'package:organixxx/presentation/profile_screen/profile_screen.dart';
import 'package:organixxx/presentation/profile_setting_screen/profile_setting_screen.dart';
import 'package:organixxx/presentation/my_order_screen/my_order_screen.dart';
import 'package:organixxx/presentation/track_order_screen/track_order_screen.dart';
import 'package:organixxx/presentation/profile_address_screen/profile_address_screen.dart';
import 'package:organixxx/presentation/app_setting_screen/app_setting_screen.dart';
import 'package:organixxx/presentation/delivery_to_one_screen/delivery_to_one_screen.dart';
import 'package:organixxx/presentation/deliver_to_current_location_one_screen/deliver_to_current_location_one_screen.dart';
import 'package:organixxx/presentation/deliver_to_new_address_screen/deliver_to_new_address_screen.dart';
import 'package:organixxx/presentation/delivery_to_screen/delivery_to_screen.dart';
import 'package:organixxx/presentation/deliver_to_current_location_screen/deliver_to_current_location_screen.dart';
import 'package:organixxx/presentation/deliver_to_new_address_one_screen/deliver_to_new_address_one_screen.dart';
import 'package:organixxx/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String logoScreen = '/logo_screen';

  static const String splashOneScreen = '/splash_one_screen';

  static const String splashTwoScreen = '/splash_two_screen';

  static const String splashThreeScreen = '/splash_three_screen';

  static const String loginScreen = '/login_screen';

  static const String signupOneScreen = '/signup_one_screen';

  static const String signupTwoScreen = '/signup_two_screen';

  static const String signupThreeScreen = '/signup_three_screen';

  static const String signupOtpScreen = '/signup_otp_screen';

  static const String signupLocationScreen = '/signup_location_screen';

  static const String homeOnePage = '/home_one_page';

  static const String homeOneContainerScreen = '/home_one_container_screen';

  static const String allCategoryScreen = '/all_category_screen';

  static const String bestProductTwoScreen = '/best_product_two_screen';

  static const String bestProductOneScreen = '/best_product_one_screen';

  static const String myCartEmptyScreen = '/my_cart_empty_screen';

  static const String bestProductScreen = '/best_product_screen';

  static const String homeScreen = '/home_screen';

  static const String myCartPage = '/my_cart_page';

  static const String myCartDateScreen = '/my_cart_date_screen';

  static const String myCartProductOneScreen = '/my_cart_product_one_screen';

  static const String myCartProductScreen = '/my_cart_product_screen';

  static const String paymentScreen = '/payment_screen';

  static const String paymentCodScreen = '/payment_cod_screen';

  static const String paymentFinalScreen = '/payment_final_screen';

  static const String paymentPopupScreen = '/payment_popup_screen';

  static const String notificationScreen = '/notification_screen';

  static const String wishlistScreen = '/wishlist_screen';

  static const String profileScreen = '/profile_screen';

  static const String profileSettingScreen = '/profile_setting_screen';

  static const String myOrderScreen = '/my_order_screen';

  static const String trackOrderScreen = '/track_order_screen';

  static const String profileAddressScreen = '/profile_address_screen';

  static const String appSettingScreen = '/app_setting_screen';

  static const String deliveryToOneScreen = '/delivery_to_one_screen';

  static const String deliverToCurrentLocationOneScreen =
      '/deliver_to_current_location_one_screen';

  static const String deliverToNewAddressScreen =
      '/deliver_to_new_address_screen';

  static const String deliveryToScreen = '/delivery_to_screen';

  static const String deliverToCurrentLocationScreen =
      '/deliver_to_current_location_screen';

  static const String deliverToNewAddressOneScreen =
      '/deliver_to_new_address_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        logoScreen: LogoScreen.builder,
        splashOneScreen: SplashOneScreen.builder,
        splashTwoScreen: SplashTwoScreen.builder,
        splashThreeScreen: SplashThreeScreen.builder,
        loginScreen: LoginScreen.builder,
        signupOneScreen: SignupOneScreen.builder,
        signupTwoScreen: SignupTwoScreen.builder,
        signupThreeScreen: SignupThreeScreen.builder,
        signupOtpScreen: SignupOtpScreen.builder,
        signupLocationScreen: SignupLocationScreen.builder,
        homeOneContainerScreen: HomeOneContainerScreen.builder,
        allCategoryScreen: AllCategoryScreen.builder,
        bestProductTwoScreen: BestProductTwoScreen.builder,
        bestProductOneScreen: BestProductOneScreen.builder,
        myCartEmptyScreen: MyCartEmptyScreen.builder,
        bestProductScreen: BestProductScreen.builder,
        homeScreen: HomeScreen.builder,
        myCartDateScreen: MyCartDateScreen.builder,
        myCartProductOneScreen: MyCartProductOneScreen.builder,
        myCartProductScreen: MyCartProductScreen.builder,
        paymentScreen: PaymentScreen.builder,
        paymentCodScreen: PaymentCodScreen.builder,
        paymentFinalScreen: PaymentFinalScreen.builder,
        paymentPopupScreen: PaymentPopupScreen.builder,
        notificationScreen: NotificationScreen.builder,
        wishlistScreen: WishlistScreen.builder,
        profileScreen: ProfileScreen.builder,
        profileSettingScreen: ProfileSettingScreen.builder,
        myOrderScreen: MyOrderScreen.builder,
        trackOrderScreen: TrackOrderScreen.builder,
        profileAddressScreen: ProfileAddressScreen.builder,
        appSettingScreen: AppSettingScreen.builder,
        deliveryToOneScreen: DeliveryToOneScreen.builder,
        deliverToCurrentLocationOneScreen:
            DeliverToCurrentLocationOneScreen.builder,
        deliverToNewAddressScreen: DeliverToNewAddressScreen.builder,
        deliveryToScreen: DeliveryToScreen.builder,
        deliverToCurrentLocationScreen: DeliverToCurrentLocationScreen.builder,
        deliverToNewAddressOneScreen: DeliverToNewAddressOneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LogoScreen.builder
      };
}
