import 'package:flutter/material.dart';
import 'package:tshil_project/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:tshil_project/common/widgets/login_sing_up_widgets/login_signup_header.dart';
import 'package:tshil_project/features/authentication/screens/singup/widgets/signup_form.dart';
import 'package:tshil_project/utils/constants/colors.dart';

import '../../../../localization/languages.dart';
import '../../../../utils/constants/sizes.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: TColors.secondary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            /// Header Logo
            const SizedBox(
              height: 350,
              width: double.infinity,
              child: TPrimaryHeaderContainer(child: TLoginSignUpHeader()),
            ),

            /// SignUp Label
            Text("${AppLocale.of(context).getTranslated("singUpLabel")}",style: Theme.of(context).textTheme.headlineMedium,),


            /// Form
            const Padding(
              padding: EdgeInsets.all(TSizes.md),
              child:SignUpForm(),
            ),
          ],
        ),
      ),
    );
  }
}
