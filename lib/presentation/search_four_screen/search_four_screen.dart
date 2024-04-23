import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';

class SearchFourScreen extends StatelessWidget {
  const SearchFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 45.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.img1,
                height: 206.v,
                width: 318.h,
              ),
              SizedBox(height: 16.v),
              SizedBox(
                height: 82.v,
                width: 323.h,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 6.h,
                          right: 109.h,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: 24.h,
                          vertical: 5.v,
                        ),
                        decoration: AppDecoration.fillWhiteA,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.v),
                            Text(
                              "Login",
                              style: theme.textTheme.headlineSmall,
                            )
                          ],
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      width: 323.h,
                      text: "Search for a Product",
                      buttonTextStyle: theme.textTheme.headlineSmall!,
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              ),
              SizedBox(height: 78.v),
              CustomImageView(
                imagePath: ImageConstant.imgImages1,
                height: 162.v,
                width: 324.h,
              ),
              SizedBox(height: 50.v),
              CustomElevatedButton(
                text: "Money Management ",
                margin: EdgeInsets.only(
                  left: 6.h,
                  right: 14.h,
                ),
                buttonTextStyle: theme.textTheme.headlineSmall!,
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }
}
