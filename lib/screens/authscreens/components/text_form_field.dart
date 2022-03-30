import 'package:flutter/material.dart';

import '../../../constants.dart';

class SicklerTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const SicklerTextFormField(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style:
          Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        isDense: false,
        filled: true,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: kDark40,
            ),
        fillColor: Colors.white.withOpacity(.2),
      ),
      controller: controller,
    );
  }
}

class SicklerPasswordField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const SicklerPasswordField(
      {Key? key, required this.controller, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      style:
          Theme.of(context).textTheme.bodyText2!.copyWith(color: Colors.white),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(kDefaultPadding),
        ),
        isDense: false,
        filled: true,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: kDark40,
            ),
        fillColor: Colors.white.withOpacity(.2),
      ),
      controller: controller,
    );
  }
}
