import 'package:flutter/material.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import '../../../localization/languages.dart';

class TLoginSignUpHeader extends StatelessWidget {
  const TLoginSignUpHeader({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    final dark=THelperFunctions.isDarkMode(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(child: Text("${AppLocale.of(context).getTranslated("welcomeLabel")}",style: Theme.of(context).textTheme.headlineLarge,)),
          Center(
            child: Image(
              alignment: Alignment.center,
              height: 150,
              image: AssetImage(
                  dark ? TImage.lightAppLogo : TImage.darkAppLogo),
            ),
          ),

        ],
      ),
    );
  }
}
