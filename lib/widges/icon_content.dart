import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_bmi_calculator_app/constants/constants.dart';


class IconContent extends StatelessWidget {

  final IconData iconCard;
  final String label;

  const IconContent({
    super.key, 
    required this.iconCard, 
    required this.label
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(iconCard, size: 80.0,),
        const SizedBox(height: 10,),
        Text(label, style: kLabelTextStyle),
      ],
    );
  }
}