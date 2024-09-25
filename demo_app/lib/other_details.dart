import 'package:demo_app/custom_animated_button.dart';
import 'package:demo_app/custom_card.dart';
import 'package:flutter/material.dart';

class OtherDetails extends StatelessWidget {
  const OtherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffFFF7DF),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomAnimatedButton(
                  title: "Setup SIP",
                  height: 60,
                  width: 150,
                  surfaceColor: Colors.white,
                  borderColor: Colors.black,
                ),
                CustomAnimatedButton(
                  title: "Linked Bank Accounts",
                  height: 60,
                  width: 150,
                  surfaceColor: Colors.white,
                  borderColor: Colors.black,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Curie's knowledge bank",
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomCard(
                      asset: "assets/5bf4ed9fdb59cb7f1b197bfdd8a7dd43.png"),
                  SizedBox(
                    width: 20,
                  ),
                  CustomCard(
                      asset: "assets/aa54b3500a1ac56d9cf4cfccda86d9a4.png"),
                  SizedBox(
                    width: 20,
                  ),
                  CustomCard(
                      asset: "assets/85c297ea9e5ba05177219bf958bc87fb.png"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff998101),
                        fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(text: "\u2022 "),
                  TextSpan(
                    text: "Next-gen banking that grows your wealth",
                  )
                ])),
            
            const SizedBox(
              width: 20,
            ),
            RichText(
                text: const TextSpan(
                    style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff998101),
                        fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(text: "\u2022 "),
                  TextSpan(
                    text:
                        "Enjoy bank-grade security, with ISO and PCI compliance",
                  )
                ])),
            const Text(
              "curie",
              style: TextStyle(
                  fontSize: 26,
                  color: Color(0xff998101),
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ),
          ],
        ),
      ),
    );
  }
}
