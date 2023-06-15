import 'package:flutter/material.dart';
import 'package:flutter_practice/constants/gaps.dart';
import 'package:flutter_practice/constants/sizes.dart';

class UserAccount extends StatelessWidget {
  final String numbers;
  final String text;

  const UserAccount({
    super.key,
    required this.numbers,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          numbers,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: Sizes.size18,
          ),
        ),
        Gaps.v3,
        Text(
          text,
          style: TextStyle(
            color: Colors.grey.shade500,
          ),
        ),
      ],
    );
  }
}
