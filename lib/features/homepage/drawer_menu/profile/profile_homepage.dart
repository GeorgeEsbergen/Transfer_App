import 'package:flutter/material.dart';
import 'package:money_transfer/core/widgets/rowas.dart';
import 'package:money_transfer/core/widgets/texts.dart';
import '../../../../core/widgets/personinfo.dart';

class ProfileHomePage extends StatelessWidget {
  const ProfileHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: 40),
        child: Column(
          children: [
            MaianAppBar(text: "Profile Setting"),
            SizedBox(height: 25),
            DescriptionOnBoarding(
              text: "Your Profile Information",
              size: 18,
              fontWeight: FontWeight.w500,
            ),
            SizedBox(height: 40),
            CircleAvatar(
              radius: 66,
              backgroundImage: AssetImage("assets/images/person.JPG"),
            ),
            SizedBox(height: 25),
            Align(
              alignment: Alignment.centerLeft,
              child: BlueText(
                text: "Personal Information",
                size: 17,
              ),
            ),
            SizedBox(height: 15),
            PersonalInformation(
              item: "3423912323",
              label: 'Account Number',
            ),
            SizedBox(height: 7),
            PersonalInformation(
              item: "Jauna A",
              label: 'Username',
            ),
            SizedBox(height: 7),
            PersonalInformation(
              item: "juana.smith@gmail.com",
              label: 'Email',
            ),
            SizedBox(height: 7),
            PersonalInformation(
              item: "01234567890",
              label: 'Mobile Phone',
            ),
            SizedBox(height: 7),
            PersonalInformation(
              item: "12 St .Elshorouk",
              label: 'Address',
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.centerLeft,
              child: BlueText(
                text: "Security",
                size: 17,
              ),
            ),
            SizedBox(height: 15),
            PersonalInformation(
              item: ">>",
              label: 'Change Pin',
            ),
            SizedBox(height: 7),
            PersonalInformation(
              item: ">>",
              label: 'Change Password',
            ),
          ],
        ),
      ),
    );
  }
}

