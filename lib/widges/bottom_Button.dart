import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BottomButton extends StatelessWidget {

  final VoidCallback onTap;
  final String buttontitle;

  const BottomButton({
    super.key, 
    required this.onTap, 
    required this.buttontitle
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(top: 8.0),
        padding: const EdgeInsets.only(bottom: 10),
        width: double.infinity,
        height: kBottomContainerHeght,
        color: kBottomContainerColors,
        child: Center(child: Text(buttontitle, style: kLargeButtonTextStyle)),
      ),
    );
  }
}