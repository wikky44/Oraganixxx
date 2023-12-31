import 'bloc/wishlist_bloc.dart';
import 'models/wishlist_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';
import 'package:organixxx/presentation/home_one_page/home_one_page.dart';
import 'package:organixxx/presentation/my_cart_page/my_cart_page.dart';
import 'package:organixxx/widgets/custom_bottom_bar.dart';

class WishlistScreen extends StatelessWidget {
  WishlistScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<WishlistBloc>(
      create: (context) => WishlistBloc(WishlistState(
        wishlistModelObj: WishlistModel(),
      ))
        ..add(WishlistInitialEvent()),
      child: WishlistScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<WishlistBloc, WishlistState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              height: 757.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 81.h,
                        vertical: 171.v,
                      ),
                      decoration: AppDecoration.fillGray,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 14.h,
                                right: 3.h,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin: EdgeInsets.only(
                                      top: 64.v,
                                      bottom: 109.v,
                                    ),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(
                                        5.h,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 183.v,
                                    width: 131.h,
                                    margin: EdgeInsets.only(left: 17.h),
                                    child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgEmptyCart1,
                                          height: 183.v,
                                          width: 131.h,
                                          alignment: Alignment.center,
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Container(
                                            width: 99.h,
                                            margin: EdgeInsets.fromLTRB(
                                                22.h, 6.v, 9.h, 156.v),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Container(
                                                  height: 4.adaptSize,
                                                  width: 4.adaptSize,
                                                  margin: EdgeInsets.only(
                                                    top: 12.v,
                                                    bottom: 3.v,
                                                  ),
                                                  decoration: BoxDecoration(
                                                    color: theme
                                                        .colorScheme.primary,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      2.h,
                                                    ),
                                                  ),
                                                ),
                                                Text(
                                                  "lbl2".tr,
                                                  style: CustomTextStyles
                                                      .bodyLargeInter,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    height: 6.adaptSize,
                                    width: 6.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 6.h,
                                      top: 127.v,
                                      bottom: 50.v,
                                    ),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(
                                        3.h,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 10.adaptSize,
                                    width: 10.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 16.h,
                                      top: 69.v,
                                      bottom: 104.v,
                                    ),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(
                                        5.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 36.v),
                          Text(
                            "msg_your_wishlist_is".tr,
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(
                            width: 213.h,
                            child: Text(
                              "msg_it_seems_like_you2".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodySmallLight,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.only(top: 6.v),
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.outlineBlack900,
                      child: Text(
                        "lbl_wishlist".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            bottomNavigationBar: _buildBottomBar(context),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeOnePage;
      case BottomBarEnum.Iconlylightoutlinebag:
        return AppRoutes.myCartPage;
      case BottomBarEnum.Heart:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.homeOnePage:
        return HomeOnePage.builder(context);
      case AppRoutes.myCartPage:
        return MyCartPage.builder(context);
      default:
        return DefaultWidget();
    }
  }
}
