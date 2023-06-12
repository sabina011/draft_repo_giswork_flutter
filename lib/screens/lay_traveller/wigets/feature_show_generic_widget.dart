import 'package:flutter/material.dart';

class GenericPositionedItemFromStartNextScreen extends StatelessWidget {
  final IconData icons;
  final VoidCallback onPressed;

  const GenericPositionedItemFromStartNextScreen({
    Key? key,
    required this.icons,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.all(
            Radius.circular(
              50.0,
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            icons,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

