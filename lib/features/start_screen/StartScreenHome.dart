
// ignore_for_file: file_names
import 'package:flutter/material.dart';
import '../../core/util/constant.dart';
import '../../core/widgets/logo.dart';


class StartScreenHome extends StatelessWidget {
  const StartScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: size.height / 3.8),
          SizedBox(
            height: 85,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Positioned(
                  right: size.width / 2 - 15,
                  child: const ContainerCircle(
                    size: 83,
                    color: MainAssets.blue,
                  ),
                ),
                Positioned(
                    left: size.width / 2 - 15,
                    child: const ContainerCircle(
                      size: 83,
                      color: MainAssets.babyBlue,
                    )),
              ],
            ),
          ),
          const SizedBox(height: 45),
          const Text(
            "TransferMe",
            style: TextStyle(
                color: MainAssets.blue,
                fontSize: 30,
                fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 15),
          const Text(
            "Your Best Money Transfer Partner",
            style: TextStyle(
                color: MainAssets.blue,
                fontSize: 13,
                fontWeight: FontWeight.w600),
          ),
          Padding(
            padding: EdgeInsets.only(top: size.height / 2.9),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Secured by ",
                  style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  "TransferMe ",
                  style: TextStyle(
                      color: MainAssets.blue,
                      fontSize: 16,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
