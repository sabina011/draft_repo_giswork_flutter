import 'package:flutter/material.dart';

class CustomItineraryButton extends StatelessWidget {
  final String btnText;
  final IconData icons;
  final VoidCallback onPressed;

  const CustomItineraryButton(
      {Key? key,
      required this.btnText,
      required this.icons,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.green,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icons,
            ),
            Text(
              btnText,
            ),
          ],
        ),
      ),
    );
  }
}
