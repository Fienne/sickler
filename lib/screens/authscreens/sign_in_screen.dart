import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/global_components/sickler_button.dart';
import 'package:sickler/screens/authscreens/components/text_form_field.dart';
import 'package:sickler/screens/authscreens/create_account_screen.dart';

import '../../constants.dart';
import '../../size_config.dart';

class SicklerSignInScreen extends StatefulWidget {
  static const String id = "sign in screen";
  const SicklerSignInScreen({Key? key}) : super(key: key);

  @override
  _SicklerSignInScreenState createState() => _SicklerSignInScreenState();
}

class _SicklerSignInScreenState extends State<SicklerSignInScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kPurple80,
      body: Stack(
        children: [
          SizedBox(
            height: screenSize.height,
          ),
          Positioned(
            left: 0,
            top: 0,
            child: SvgPicture.asset("assets/svg/orange_blob.svg",
                width: screenSize.width * .7),
          ),
          Positioned(
            right: 0,
            top: screenSize.height -
                500, //568 is the  actual height of the pink blob,
            child: SvgPicture.asset("assets/svg/pink_blob.svg",
                width: screenSize.width),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding2x),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: relHeight(50, context)),
                  IconButton(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.zero,
                    icon: SvgPicture.asset(
                      "assets/svg/back_icon.svg",
                      color: Colors.white,
                    ),
                    onPressed: () {
                      HapticFeedback.lightImpact();
                      Feedback.forTap(context);
                      Navigator.pop(context);
                    },
                  ),
                  SizedBox(height: relHeight(40, context)),
                  Text(
                    "Welcome,",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "Let's sign you in!",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(height: relHeight(90, context)),
                  SicklerTextFormField(controller: email, hintText: "Email"),
                  SizedBox(height: relHeight(kDefaultPadding, context)),
                  SicklerPasswordField(
                      controller: password, hintText: "Password"),
                  SizedBox(height: relHeight(90, context)),
                  SicklerButton(
                      colour: kPurple80,
                      buttonLabel: "Sign In",
                      onPressed: () {
                        HapticFeedback.lightImpact();
                        Feedback.forTap(context);
                      },
                      isPrimaryButton: true),
                  SizedBox(height: relHeight(kDefaultPadding, context)),
                  SicklerButton(
                      colour: kPurple80,
                      buttonLabel: "Create Account",
                      onPressed: () {
                        HapticFeedback.lightImpact();
                        Feedback.forTap(context);
                        Navigator.pushNamed(context, CreateAccountScreen.id);
                      },
                      isPrimaryButton: false),
                  SizedBox(height: relHeight(kDefaultPadding, context)),
                  Padding(
                    padding: const EdgeInsets.all(kDefaultPadding),
                    child: Center(
                      child: Text(
                        "Forgot Password?",
                        style: kFootNote.copyWith(
                            color: Colors.white, fontSize: 12),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
