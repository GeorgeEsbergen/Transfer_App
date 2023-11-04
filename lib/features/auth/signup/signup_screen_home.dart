import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/buttons.dart';
import 'package:money_transfer/features/auth/profileupdate.dart/firstpage.dart';
import '../../../core/widgets/logo.dart';
import '../../../core/widgets/rowas.dart';
import '../../../core/widgets/textfield.dart';
import '../../../core/widgets/texts.dart';
import '../login/loginpage.dart';

class SignUpScreenHome extends StatelessWidget {
  const SignUpScreenHome({super.key});

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
              text: 'Sign Up',
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
                    buttonName: "Sign Up",
                    fn: () {
                      Navigator.pushNamed(context, ProfileUpdateOne.routeName);
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 20,
                  foregroundImage: AssetImage(
                    "assets/images/icons/google.png",
                  ),
                ),
                CircleAvatar(
                  radius: 30,
                  foregroundImage: AssetImage(
                    "assets/images/icons/Facebook.png",
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            RowOfLogin(
              buttontext: 'Login',
              text: "Already have an account? ",
              fn: () {
                Navigator.pushReplacementNamed(context, LoginScreen.routeName);
              },
            )
          ],
        ),
      ),
    );
  }
}
