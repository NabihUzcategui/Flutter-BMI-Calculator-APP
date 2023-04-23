import 'package:flutter/material.dart';

import '../constants/constants.dart';

class RoundIconButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback onPressed;

  const RoundIconButton({
    super.key, 
    required this.icon, 
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      shape: const CircleBorder(),
      elevation: 0,
      fillColor: kFloatingActionButtonColor,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}