import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tshil_project/features/authentication/screens/login/login.dart';
import 'package:tshil_project/utils/constants/colors.dart';

import '../../../../../common/styles/shadows.dart';
import '../../../../../localization/languages.dart';
import '../../../../../navigation_menu.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/vaildators/vaildation.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // final controller = Get.put(LoginController());
    return  Form(
          //key: controller.loginFormKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
            child: Column(
              children: [
                /// First Name Text Field
                Container(
                  padding: const EdgeInsets.only(bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [TShadowStyle.textFieldShadow],
                  ),
                  child: TextFormField(
                    //controller: controller.email,

                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.transparent,
                      ),
                      hintStyle: Theme.of(context).textTheme.titleSmall!.apply(color: TColors.darkGrey),
                      hintText:
                          "${AppLocale.of(context).getTranslated("firstName")}",
                    ),
                    validator: (value) => TValidator.validateEmail(value),
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputField,
                ),

                /// Last Name Text Field
                Container(
                  padding: const EdgeInsets.only(bottom: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [TShadowStyle.textFieldShadow],
                  ),
                  child: TextFormField(
                    //controller: controller.email,

                    decoration: InputDecoration(
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.transparent,
                      ),
                      hintStyle: Theme.of(context).textTheme.titleSmall!.apply(color: TColors.darkGrey),
                      hintText:
                          "${AppLocale.of(context).getTranslated("lastName")}",
                    ),
                    validator: (value) => TValidator.validateEmail(value),
                  ),
                ),
                const SizedBox(
                  height: TSizes.spaceBtwInputField,
                ),

                /// Email Text Field
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
                      hintStyle: Theme.of(context).textTheme.titleSmall!.apply(color: TColors.darkGrey),
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
                    //textAlign: TextAlign.right,
                    decoration: InputDecoration(
                      hintStyle: Theme.of(context).textTheme.titleSmall!.apply(color: TColors.darkGrey),
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
                  height: TSizes.spaceBtwSections * 2,
                ),

                /// Sign Up Button
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
                        "${AppLocale.of(context).getTranslated("singUpLabel")}",
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

                /// All ready have account and login Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    /// All ready have account
                    Text(
                      "${AppLocale.of(context).getTranslated("allReadyHaveAccount")}",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(color: TColors.darkerGrey,),
                    ),

                    /// login text
                    TextButton(
                      onPressed: () => Get.offAll(
                            () => const LoginScreen(),
                      ),
                      child: Text(
                        "${AppLocale.of(context).getTranslated("loginLabel")}",
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
              ],
            ),
          ),

    );
  }
}
