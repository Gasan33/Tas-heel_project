import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tshil_project/features/authentication/screens/singup/signup.dart';
import 'package:tshil_project/utils/constants/colors.dart';
import '../../../../../common/styles/shadows.dart';
import '../../../../../localization/languages.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/vaildators/vaildation.dart';

class TLoginForm extends StatelessWidget {
  const TLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(LoginController());
    return

       Form(
        //key: controller.loginFormKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
          child: Column(
            children: [
              /// Email
              Container(
                padding: const EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [TShadowStyle.textFieldShadow],
                ),
                child: TextFormField(
                  //controller: controller.email,
                  //textAlign: TextAlign.right,

                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.email,
                      color: TColors.primary.withOpacity(0.5),
                    ),
                    hintStyle: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .apply(color: TColors.darkGrey),
                    hintText: "${AppLocale.of(context).getTranslated("email")}",
                  ),
                  validator: (value) => TValidator.validateEmail(value),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputField,
              ),

              /// Password
              Container(
                padding: const EdgeInsets.only(bottom: 2),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(32),
                  boxShadow: [TShadowStyle.textFieldShadow],
                ),
                child: TextFormField(
                  //controller: controller.password,
                  // obscureText: controller.hidePassword.value,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintStyle: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .apply(color: TColors.darkGrey),
                    hintText:
                        "${AppLocale.of(context).getTranslated("password")}",
                    prefixIcon: IconButton(
                      onPressed: () {},
                      // => controller.hidePassword.value =
                      //     !controller.hidePassword.value,
                      icon: Icon(
                        // controller.hidePassword.value
                        // ? Iconsax.eye_slash
                        // :
                        Icons.lock, color: TColors.primary.withOpacity(0.5),
                      ),
                    ),
                  ),
                  validator: (value) =>
                      TValidator.validateEmptyText('Password', value!),
                ),
              ),

              const SizedBox(
                height: TSizes.spaceBtwInputField / 2,
              ),

              /// Forget Password
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton(
                    onPressed: () {},
                    // => Get.to(
                    //   () => const ForgetPassword(),
                    // ),
                    child: Text(
                      "${AppLocale.of(context).getTranslated("forgetPassword")}",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: TColors.darkerGrey),
                    ),
                  ),
                  Text(
                    "${AppLocale.of(context).getTranslated("resetPassword")}",
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: TColors.darkGrey),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections / 2,
              ),

              /// Sign In Button
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: TSizes.lg),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      boxShadow: [TShadowStyle.buttonShadow],
                      borderRadius: BorderRadius.circular(32)),
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () => Get.to(() => const NavigationMenu()),
                    // => controller.emailAndPasswordSignIn(),
                    child: Text(
                      "${AppLocale.of(context).getTranslated("loginLabel")}",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: TColors.darkerGrey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: TSizes.spaceBtwItems,
              ),
              const SizedBox(
                height: TSizes.spaceBtwInputField / 2,
              ),

              /// Don't Have Account & Create Account Button
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  /// Don't Have Account
                  Text(
                    "${AppLocale.of(context).getTranslated("don'tHaveAccount")}",
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                          color: TColors.darkerGrey,
                        ),
                  ),

                  /// Create Account Button
                  TextButton(
                    onPressed: () => Get.to(
                      () => const SignUpScreen(),
                    ),
                    child: Text(
                      "${AppLocale.of(context).getTranslated("singUpLabel")}",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: TColors.darkGrey),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: TSizes.spaceBtwSections / 2,
              ),

              /// Create Account With UAE PASS
              Container(
                decoration: BoxDecoration(
                  color: TColors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [TShadowStyle.buttonShadow],
                ),
                padding: const EdgeInsets.all(TSizes.md),
                width: double.infinity,
                child: Center(
                    child: Text(
                  "${AppLocale.of(context).getTranslated("singInWithUAEPASS")}",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .apply(color: TColors.darkerGrey),
                )),
              ),
            ],
          ),
        ),
      );
  }
}
