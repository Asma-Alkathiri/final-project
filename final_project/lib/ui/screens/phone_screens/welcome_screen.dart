import 'package:final_project/service/supabase_initializer.dart';
import 'package:final_project/ui/componant/coustom_textwithbutton.dart';
import 'package:final_project/ui/componant/custom_devider_text.dart';
import 'package:final_project/ui/componant/custom_google_button.dart';
import 'package:final_project/ui/componant/register_button.dart';
import 'package:final_project/ui/componant/welcome_scaffold.dart';
import 'package:final_project/ui/constants/custom_colors.dart';
import 'package:final_project/ui/constants/custom_spacing.dart';
import 'package:final_project/ui/screens/phone_screens/sign_in_screen.dart';
import 'package:final_project/ui/screens/phone_screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return WelcomeScaffold(
      
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            kVSpace128,
            kVSpace64,
            const Text(
              "Welcome to",
              style: TextStyle(
                  color: blackColor, fontWeight: FontWeight.bold, fontSize: 50),
              textAlign: TextAlign.left,
            ),
            const Text(
              "FoodHub",
              style: TextStyle(
                  color: orangeColor,
                  fontWeight: FontWeight.w700,
                  fontSize: 44),
              textAlign: TextAlign.left,
            ),
            kVSpace16,
            const SizedBox(
              width: 250,
              child: Text(
                "Your favourite foods delivered fast at your door.",
                style: TextStyle(
                    color: textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            kVSpace128,
            kVSpace32,
            kVSpace4,
            const CoustomDeviderText(
              textColor: lightGrayColor,
            ),
            Center(
              child: Column(
                children: [
                  kVSpace24,
                  GoogleButton(onPressed: () {
                    SupabaseInitializer().onTapBtnGoogleSignin();
                  }),
                  kVSpace24,
                  RegisterButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignUpScreen(),
                        ),
                      );
                    },
                  ),
                  kVSpace32,
                  TextWithTextButton(
                    text: 'Already have account?',
                    textColor: lightGrayColor,
                    buttonTitle: ' Sign In',
                    buttonTitleColor: lightGrayColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
