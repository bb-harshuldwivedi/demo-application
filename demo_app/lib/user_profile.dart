import 'package:demo_app/custom_animated_button.dart';
import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.7),
                    Colors.black.withOpacity(0.9),
                    Colors.black.withOpacity(0.7),
                  ],
                  stops: const [
                    0.0,
                    0.2,
                    0.4,
                    0.6,
                    0.8,
                    1.0
                  ], // Define where each color should start/end
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                ),
              ),
              height: 236,
              // color: Colors.black.withOpacity(0.2),
            ),
            Container(
              height: 135,
              color: const Color(0xffFFF7DF),
            ),
          ],
        ),
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment:
                  CrossAxisAlignment.start, // align start across rows
              children: [
                // const SizedBox(
                //   height: 40,
                // ),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(3, 3),
                              blurRadius: 1,
                              spreadRadius: 1),
                          BoxShadow(
                            color: Colors.black,
                            offset: Offset(0, -2),
                            blurRadius: 1,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      width: 40,
                      height: 40,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          "assets/ad2b274ee86c9640285f9b8bbb10cc3f.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Column(
                      crossAxisAlignment:
                          CrossAxisAlignment.start, // Align content to the left
                      children: [
                        Text(
                          'hey',
                          style: TextStyle(
                              fontSize: 14,
                              fontStyle: FontStyle.italic,
                              color: Colors.white),
                        ),
                        Text(
                          'John!',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      "9876543210@curieyesbank",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    ),
                    const SizedBox(width: 2),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.white),
                      height: 16,
                      width: 16,
                    ),
                  ],
                ),
                const SizedBox(height: 40), // Add padding here to separate rows
                Stack(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 25),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(2, 2),
                              blurRadius: 0,
                              spreadRadius: 2)
                        ],
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      width: 327,
                      height: 180,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment
                              .center, // Ensure center alignment here
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 32,
                                  width: 32,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      boxShadow: const [
                                        BoxShadow(
                                            color: Colors.black,
                                            offset: Offset(1, 1),
                                            blurRadius: 0,
                                            spreadRadius: 1)
                                      ],
                                      color: Colors.blue[100]),
                                  child: const Text(
                                    '\u{20B9}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 3),
                                const Text(
                                  "52,503",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "All time gains:",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '\u{20B9}2,503',
                                  style: TextStyle(
                                      color: Color(0xff33FF91),
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Past 1-year CAGR:",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "8.5%",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      bottom: 0,
                      right: 0,
                      left: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CustomAnimatedButton(
                            title: "Add Money",
                            height: 50,
                            width: 100,
                            surfaceColor: Color(
                              0xff33FF91,
                            ),
                            borderColor: Colors.white,
                          ),
                          CustomAnimatedButton(
                            title: "Scan & Pay",
                            height: 50,
                            width: 100,
                            surfaceColor: Colors.white,
                            borderColor: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
