import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/buttons.dart';
import 'package:money_transfer/core/widgets/rowas.dart';
import 'package:money_transfer/features/auth/signup/signuppage.dart';
import '../../../core/widgets/logo.dart';
import '../../../core/widgets/textfield.dart';
import '../../../core/widgets/texts.dart';
import '../../homepage/homepage.dart';

class LoginScreenHome extends StatelessWidget {
  const LoginScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(right: 30, left: 30, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LogoRow(),
            const SizedBox(height: 20),
            const LabeledOnboarding(
              text: 'Log in',
            ),
            const SizedBox(height: 50),
            const Form(
              child: Column(
                children: [
                  MainTextField(
                    visibleFalse: null,
                    visibleTrue: null,
                    hint: 'example@gmail.com',
                    label: 'Email Address',
                    keyboard: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 30),
                  MainTextField(
                    visibleFalse: Icons.visibility,
                    visibleTrue: Icons.visibility_off_sharp,
                    hint: '',
                    label: 'Password',
                    keyboard: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 30),
                  MainTextField(
                    visibleFalse: Icons.visibility,
                    visibleTrue: Icons.visibility_off_sharp,
                    hint: '',
                    label: 'Confirm Password',
                    keyboard: TextInputType.emailAddress,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 55),
            Center(
                child: BlueButton(
                    buttonName: "Log In",
                    fn: () {
                      Navigator.pushNamed(context, HomePageScreen.routeName);
                    })),
            const SizedBox(height: 35),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 5,
                  width: 100,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    endIndent: 15,
                  ),
                ),
                Text("or"),
                SizedBox(
                  height: 3,
                  width: 100,
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                    indent: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 25,
                  foregroundImage: AssetImage(
                    "assets/images/icons/google.png",
                  ),
                ),
                SizedBox(width: 50),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.white,
                  foregroundImage: AssetImage(
                    "assets/images/icons/Facebook.png",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            RowOfLogin(
                text: "Don't have account? ",
                buttontext: "SignUp",
                fn: () {
                  Navigator.pushReplacementNamed(
                      context, SignUpScreen.routeName);
                })
          ],
        ),
      ),
    );
  }
}
