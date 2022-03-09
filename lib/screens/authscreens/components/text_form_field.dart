import 'package:flutter/material.dart';

import '../../../constants.dart';

class SicklerTextFormField extends StatelessWidget {
  final TextEditingController controller;
  const SicklerTextFormField({Key? key, required this.controller})
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
        hintText: "Email",
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
  const SicklerPasswordField({Key? key, required this.controller})
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
        hintText: "Password",
        hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
              color: kDark40,
            ),
        fillColor: Colors.white.withOpacity(.2),
      ),
      controller: controller,
    );
  }
}
