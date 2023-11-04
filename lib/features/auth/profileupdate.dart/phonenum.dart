import 'package:flutter/material.dart';
import 'package:money_transfer/features/auth/profileupdate.dart/verfication.dart';
import '../../../core/widgets/buttons.dart';
import '../../../core/widgets/rowas.dart';
import '../../../core/widgets/textfield.dart';

class SetPhoneNumber extends StatelessWidget {
  const SetPhoneNumber({super.key});
  static const String routeName = "SetPhoneNumber";
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const MaianAppBar(
                text: "Phone Number",
              ),
              const SizedBox(height: 45),
              const SizedBox(
                width: 160,
                child: Text(
                  "Please add your mobile phone number ",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              const SizedBox(height: 75),
              const Form(
                child: Column(
                  children: [
                    MainTextField(
                      hint: '+20 01234567890',
                      keyboard: TextInputType.text,
                      label: '* Phone Number',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 70),
              BlueButton(
                buttonName: "Confirm",
                fn: () {
                  Navigator.pushNamed(context , VerifyPhoneNumber.routeName);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
