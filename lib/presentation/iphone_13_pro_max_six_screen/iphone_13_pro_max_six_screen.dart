import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';

class Iphone13ProMaxSixScreen extends StatelessWidget {
  const Iphone13ProMaxSixScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 804.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 5.h),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgScreenshot20240321,
                height: 194.v,
                width: 418.h,
                alignment: Alignment.bottomCenter,
                margin: EdgeInsets.only(bottom: 280.v),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 862.v,
                  width: 413.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      50.h,
                    ),
                    border: Border.all(
                      color: theme.colorScheme.primary.withOpacity(1),
                      width: 1.h,
                      strokeAlign: BorderSide.strokeAlignOutside,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildStartSavingButton(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildStartSavingButton(BuildContext context) {
    return CustomElevatedButton(
      height: 56.v,
      text: "Start Saving !",
      margin: EdgeInsets.only(
        left: 32.h,
        right: 32.h,
        bottom: 30.v,
      ),
      buttonStyle: CustomButtonStyles.fillPrimary,
      buttonTextStyle: CustomTextStyles.titleLargeDMSansWhiteA700,
      onPressed: () {
        onTapStartSavingButton(context);
      },
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapStartSavingButton(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
