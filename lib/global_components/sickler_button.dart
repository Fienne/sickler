import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class SicklerButton extends StatelessWidget {
  final String buttonLabel;
  final Color colour;
  final bool isPrimaryButton;
  final VoidCallback onPressed;
  const SicklerButton(
      {Key? key,
      required this.buttonLabel,
      required this.colour,
      required this.onPressed,
      required this.isPrimaryButton})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: relHeight(72, context),
        width: double.infinity,
        decoration: BoxDecoration(
            boxShadow: isPrimaryButton
                ? [
                    BoxShadow(
                        color: colour.withOpacity(.3),
                        offset: const Offset(0, 7),
                        blurRadius: 15)
                  ]
                : null,
            color: isPrimaryButton ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(kDefaultPadding + 4),
            border: isPrimaryButton
                ? null
                : Border.all(width: 1.5, color: Colors.white)),
        child: Center(
          child: Text(
            buttonLabel,
            style: Theme.of(context).textTheme.bodyText1!.copyWith(
                fontSize: 18,
                fontWeight:
                    isPrimaryButton ? FontWeight.bold : FontWeight.normal,
                color: isPrimaryButton ? colour : Colors.white),
          ),
        ),
      ),
    );
  }
}
