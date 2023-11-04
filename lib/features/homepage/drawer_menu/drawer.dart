// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:money_transfer/core/util/constant.dart';
import 'package:money_transfer/core/widgets/buttons.dart';
import 'package:money_transfer/core/widgets/texts.dart';
import 'package:money_transfer/features/auth/login/loginpage.dart';
import 'package:money_transfer/features/homepage/drawer_menu/transfer/transferpag/transferscreen.dart';

import 'mywallet/mywalletscreen.dart';

class Drawermenu extends StatelessWidget {
  const Drawermenu({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width / 1.5,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/person.JPG"),
            ),
            const SizedBox(height: 20),
            const Maintext(text: "Jumana Smith", size: 24),
            const DescriptionOnBoarding(
              text: "jumana.smith@gmail.com",
              fontWeight: FontWeight.w400,
              size: 16,
            ),
            RowOfMenuProfile(
              icon: Icons.account_balance_wallet_outlined,
              text: "My Wallet",
              fun: () {
                Navigator.pushNamed(context, MyWalletScreen.routeName);
              },
            ),
            RowOfMenuProfile(
              icon: Icons.person_4_outlined,
              text: "Profile",
              fun: () {},
            ),
            RowOfMenuProfile(
              icon: Icons.stacked_bar_chart,
              text: "Statistics",
              fun: () {},
            ),
            RowOfMenuProfile(
              icon: Icons.swap_horiz_rounded,
              text: "Transfer",
              fun: () {
                Navigator.pushNamed(context, TransferScreen.routeName);

                
              },
            ),
            RowOfMenuProfile(
              icon: Icons.settings_outlined,
              text: "Setting",
              fun: () {},
            ),
            const SizedBox(height: 140),
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(90)),
              width: 175,
              height: 59,
              child: BlueButton(
                  opacity: 0.3,
                  buttonName: "Log Out",
                  fn: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  }),
            )
          ]),
        ),
      ),
    );
  }
}

class RowOfMenuProfile extends StatelessWidget {
  const RowOfMenuProfile({
    super.key,
    required this.icon,
    required this.text,
    required this.fun,
  });
  final IconData icon;
  final String text;
  final VoidCallback fun;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: InkWell(
        onTap: fun,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(
              icon,
              size: 24,
              color: MainAssets.babyBlue,
            ),
            const SizedBox(width: 10),
            Maintext(text: text)
          ],
        ),
      ),
    );
  }
}

class Maintext extends StatelessWidget {
  const Maintext({super.key, required this.text, this.size});
  final String text;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.black,
          fontSize: size ?? 18,
          fontWeight: FontWeight.w500),
    );
  }
}
