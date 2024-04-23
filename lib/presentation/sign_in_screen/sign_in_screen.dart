import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignInScreen extends StatelessWidget {
  SignInScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  left: 21.h,
                  top: 65.v,
                  right: 21.h,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        width: 144.h,
                        margin: EdgeInsets.only(left: 39.h),
                        child: Text(
                          "Welcome \nBack!",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.displaySmallErrorContainer
                              .copyWith(
                            height: 1.19,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 32.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 39.h,
                        right: 28.h,
                      ),
                      child: CustomTextFormField(
                        controller: userNameController,
                        hintText: "Username or Email",
                        textInputType: TextInputType.emailAddress,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(11.h, 16.v, 13.h, 15.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUserGray70002,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 55.v,
                        ),
                        contentPadding: EdgeInsets.only(
                          top: 20.v,
                          right: 30.h,
                          bottom: 20.v,
                        ),
                      ),
                    ),
                    SizedBox(height: 31.v),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 39.h,
                        right: 28.h,
                      ),
                      child: CustomTextFormField(
                        controller: passwordController,
                        hintText: "Password",
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        prefix: Container(
                          margin: EdgeInsets.fromLTRB(15.h, 14.v, 13.h, 18.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgTrophy,
                            height: 22.v,
                            width: 18.h,
                          ),
                        ),
                        prefixConstraints: BoxConstraints(
                          maxHeight: 55.v,
                        ),
                        suffix: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 18.v, 16.h, 17.v),
                          child: CustomImageView(
                            imagePath: ImageConstant.imgEyeGray70002,
                            height: 20.adaptSize,
                            width: 20.adaptSize,
                          ),
                        ),
                        suffixConstraints: BoxConstraints(
                          maxHeight: 55.v,
                        ),
                        obscureText: true,
                      ),
                    ),
                    SizedBox(height: 10.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(right: 28.h),
                        child: Text(
                          "Forgot Password?",
                          style: CustomTextStyles
                              .bodySmallPoppinsOnPrimaryContainer,
                        ),
                      ),
                    ),
                    SizedBox(height: 47.v),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                        padding: EdgeInsets.only(left: 54.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 29.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sign In",
                                    style: CustomTextStyles
                                        .headlineSmallActorPrimary,
                                  ),
                                  SizedBox(height: 13.v),
                                  GestureDetector(
                                    onTap: () {
                                      onTapTxtRegister(context);
                                    },
                                    child: Text(
                                      "Register",
                                      style: theme.textTheme.titleLarge,
                                    ),
                                  ),
                                  SizedBox(height: 26.v),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 33.h),
                                      child: Text(
                                        "sign in with",
                                        style:
                                            CustomTextStyles.bodySmallPoppins,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8.v),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        CustomIconButton(
                                          height: 48.adaptSize,
                                          width: 48.adaptSize,
                                          padding: EdgeInsets.all(11.h),
                                          child: CustomImageView(
                                            imagePath: ImageConstant.imgGoogle1,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 57.h),
                                          child: CustomIconButton(
                                            height: 48.adaptSize,
                                            width: 48.adaptSize,
                                            padding: EdgeInsets.all(11.h),
                                            child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgFacebookAppSymbol,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 42.h,
                                bottom: 113.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomIconButton(
                                    height: 51.adaptSize,
                                    width: 51.adaptSize,
                                    padding: EdgeInsets.all(17.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgGroup25,
                                    ),
                                  ),
                                  SizedBox(height: 25.v),
                                  CustomImageView(
                                    imagePath: ImageConstant.imgGroup1,
                                    height: 15.adaptSize,
                                    width: 15.adaptSize,
                                    alignment: Alignment.centerRight,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.v)
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates to the signUpScreen when the action is triggered.
  onTapTxtRegister(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
