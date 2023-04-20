// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardContainer extends StatelessWidget {

  final Color colorCard;
  final Widget cardChild;
  final VoidCallback? onPress;

  const CardContainer({
    Key? key,
    required this.colorCard,
    required this.cardChild,
    this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: colorCard,
        ),
        child: cardChild,
      ),
    );
  }
}
