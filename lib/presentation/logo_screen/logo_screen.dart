import 'bloc/logo_bloc.dart';
import 'models/logo_model.dart';
import 'package:flutter/material.dart';
import 'package:organixxx/core/app_export.dart';

class LogoScreen extends StatelessWidget {
  const LogoScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LogoBloc>(
      create: (context) => LogoBloc(LogoState(
        logoModelObj: LogoModel(),
      ))
        ..add(LogoInitialEvent()),
      child: LogoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LogoBloc, LogoState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 38.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 1.v),
                  SizedBox(
                    height: 333.v,
                    width: 298.h,
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLogo1,
                          height: 226.v,
                          width: 176.h,
                          alignment: Alignment.topCenter,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgPureOrganic1,
                          height: 237.v,
                          width: 298.h,
                          alignment: Alignment.bottomCenter,
                        ),
                      ],
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
}
