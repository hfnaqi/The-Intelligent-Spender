import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController userNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
            child: SizedBox(
              height: SizeUtils.height,
              child: Form(
                key: _formKey,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 27.h,
                    vertical: 57.v,
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 15.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 146.h,
                          margin: EdgeInsets.only(left: 27.h),
                          child: Text(
                            "Create an \naccount",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: theme.textTheme.displaySmall!.copyWith(
                              height: 1.19,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 32.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 27.h,
                          right: 28.h,
                        ),
                        child: CustomTextFormField(
                          controller: userNameController,
                          hintText: "Username or Email",
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(11.h, 16.v, 13.h, 15.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgUser,
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
                          borderDecoration: TextFormFieldStyleHelper.fillGray,
                          fillColor: appTheme.gray50,
                        ),
                      ),
                      SizedBox(height: 31.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 27.h,
                          right: 28.h,
                        ),
                        child: CustomTextFormField(
                          controller: passwordController,
                          hintText: "Password",
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(15.h, 15.v, 13.h, 17.v),
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
                            margin: EdgeInsets.fromLTRB(30.h, 18.v, 15.h, 17.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
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
                      SizedBox(height: 31.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 27.h,
                          right: 28.h,
                        ),
                        child: CustomTextFormField(
                          controller: confirmpasswordController,
                          hintText: "Confirm Password",
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(15.h, 17.v, 13.h, 15.v),
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
                            margin: EdgeInsets.fromLTRB(30.h, 18.v, 15.h, 17.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgEye,
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
                      SizedBox(height: 17.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 244.h,
                          margin: EdgeInsets.only(left: 27.h),
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "By clicking the ",
                                  style: theme.textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text:
                                      "Register button, you agree to the public offer",
                                  style: CustomTextStyles
                                      .bodySmallSecondaryContainer,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                      ),
                      SizedBox(height: 37.v),
                      _buildRegisterColumn(context),
                      SizedBox(height: 8.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 94.h),
                          child: Row(
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
                                padding: EdgeInsets.only(left: 62.h),
                                child: CustomIconButton(
                                  height: 48.adaptSize,
                                  width: 48.adaptSize,
                                  padding: EdgeInsets.all(11.h),
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgFacebookAppSymbol,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          onTapTxtBack(context);
                        },
                        child: Text(
                          "Back",
                          style: CustomTextStyles.bodySmallPoppins,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRegisterColumn(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 27.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 14.v,
                bottom: 71.v,
              ),
              child: Text(
                "Register",
                style: CustomTextStyles.headlineSmallActorPrimary,
              ),
            ),
            Spacer(
              flex: 35,
            ),
            Padding(
              padding: EdgeInsets.only(top: 96.v),
              child: Text(
                "sign up with",
                style: CustomTextStyles.bodySmallPoppins,
              ),
            ),
            Spacer(
              flex: 64,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 7.v),
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
                  SizedBox(height: 39.v),
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
    );
  }

  /// Navigates to the signInScreen when the action is triggered.
  onTapTxtBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInScreen);
  }
}
