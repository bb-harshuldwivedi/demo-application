import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final String asset;
  const CustomCard({super.key, required this.asset});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 192,
      width: 108,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
              color: Colors.black,
              offset: Offset(2, 2),
              blurRadius: 0,
              spreadRadius: 2),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          asset,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
