import 'package:flutter/material.dart';
import 'package:money_transfer/core/util/constant.dart';
import 'package:money_transfer/features/auth/profileupdate.dart/phonenum.dart';

import '../../../core/widgets/buttons.dart';
import '../../../core/widgets/rowas.dart';
import '../../../core/widgets/textfield.dart';

class ProfileUpdateOne extends StatelessWidget {
  const ProfileUpdateOne({super.key});
  static const String routeName = "ProfileUpdateOne";

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
                text: "Profile",
              ),
              const SizedBox(height: 50),
              const Text(
                "Please set up your profile",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              const SizedBox(height: 40),
              const CircleAvatar(
                radius: 66,
                backgroundColor: MainAssets.blue,
                child: Icon(
                  Icons.file_upload_outlined,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 75),
              const Form(
                child: Column(
                  children: [
                    MainTextField(
                      hint: 'John',
                      keyboard: TextInputType.text,
                      label: 'First Name',
                    ),
                    SizedBox(height: 30),
                    MainTextField(
                      hint: 'Smith',
                      keyboard: TextInputType.text,
                      label: 'Last Name',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 60),
              SizedBox(
                width: 133,
                child: BlueButton(
                  buttonName: "Set",
                  fn: () {
                    Navigator.pushNamed(context, SetPhoneNumber.routeName);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
