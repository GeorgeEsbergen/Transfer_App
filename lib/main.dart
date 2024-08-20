import 'package:flutter/material.dart';
import 'package:money_transfer/features/auth/profileupdate.dart/firstpage.dart';
import 'package:money_transfer/features/auth/profileupdate.dart/verfication.dart';
import 'package:money_transfer/features/homepage/drawer_menu/mywallet/mywalletscreen.dart';
import 'features/auth/login/loginpage.dart';
import 'features/auth/profileupdate.dart/phonenum.dart';
import 'features/auth/signup/signuppage.dart';
import 'features/carddetails/carddetails.dart';
import 'features/homepage/drawer_menu/profile/profile_screen.dart';
import 'features/homepage/drawer_menu/transfer/amount/amountscreen.dart';
import 'features/homepage/drawer_menu/transfer/choosebank/bankScreen.dart';
import 'features/homepage/drawer_menu/transfer/simcard.dart';
import 'features/homepage/drawer_menu/transfer/success.dart';
import 'features/homepage/drawer_menu/transfer/transferpag/transferscreen.dart';
import 'features/homepage/homepage.dart';
import 'features/onboarding/onboardingone.dart';
import 'features/start_screen/dots.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      
      
      routes: {
        '/':(context) =>  const OnBoardingOne(),
        PageViewDemo.routeName:(context) =>const PageViewDemo(),
        LoginScreen.routeName:(context) => const LoginScreen(),
        SignUpScreen.routeName:(context) => const SignUpScreen(),
        ProfileUpdateOne.routeName:(context) =>const ProfileUpdateOne(),
        SetPhoneNumber.routeName:(context) => const SetPhoneNumber(),
        VerifyPhoneNumber.routeName:(context) => const VerifyPhoneNumber(),
        HomePageScreen.routeName: (context)=>const HomePageScreen(),
        CardDetails.routeName:(context) => const CardDetails(),
        MyWalletScreen.routeName:(context) =>const MyWalletScreen(),
        TransferScreen.routeName:(context)=> const TransferScreen(),
        AmountScreen.routeName:(context) => const AmountScreen(),
        BankScreen.routeName:(context) => const BankScreen(),
        SimCard.routeName:(context) => const SimCard(),
        ProfileScreen.routeName: (context)=>const ProfileScreen(),
        SuccessScreen.routeName:(context) => const SuccessScreen(),

      },
    
    );
  }
}
