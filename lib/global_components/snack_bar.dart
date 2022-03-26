import 'package:flutter/material.dart';
import 'package:sickler/constants.dart';

class SicklerSnackBar extends StatelessWidget {
  final String message;
  final bool success;
  final bool? actions;
  const SicklerSnackBar(
      {Key? key, required this.message, this.actions, required this.success})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SnackBar(
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 6,
      margin: const EdgeInsets.all(kDefaultPadding),
      padding: const EdgeInsets.all(kDefaultPadding),
      backgroundColor: success ? kGreen80 : kRed80,
      content: Text(
        message,
        style: Theme.of(context)
            .textTheme
            .bodyText1!
            .copyWith(color: Colors.white),
      ),
    );
  }
}
