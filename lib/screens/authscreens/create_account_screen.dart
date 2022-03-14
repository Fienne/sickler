import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/global_components/sickler_button.dart';
import 'package:sickler/screens/authscreens/components/text_form_field.dart';
import 'package:sickler/screens/authscreens/sign_in_screen.dart';
import '../../constants.dart';
import '../../size_config.dart';

class CreateAccountScreen extends StatefulWidget {
  static const String id = "create account screen";
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  _CreateAccountScreenState createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kPurple80,
      //resizeToAvoidBottomInset: false,
      // appBar: SicklerAppBar(
      //    showActions: false,
      //    leading: Padding(
      //      padding: const EdgeInsets.only(
      //          left: kDefaultPadding2x, top: kDefaultPadding2x),
      //      child:
      //          SvgPicture.asset("assets/svg/back_icon.svg", color: Colors.white),
      //    ),
      //  ),
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
          SingleChildScrollView(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: kDefaultPadding2x),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: relHeight(50, context),
                  ),
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
                  SizedBox(
                    height: relHeight(40, context),
                  ),
                  Text(
                    "Welcome,",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.white),
                  ),
                  Text(
                    "Create an Account",
                    style: Theme.of(context)
                        .textTheme
                        .headline2!
                        .copyWith(color: Colors.white),
                  ),
                  SizedBox(
                    height: relHeight(40, context),
                  ),
                  SicklerTextFormField(
                      controller: firstName, hintText: "First Name"),
                  SizedBox(
                    height: relHeight(kDefaultPadding, context),
                  ),
                  SicklerTextFormField(
                      controller: lastName, hintText: "Last Name"),
                  SizedBox(height: relHeight(kDefaultPadding, context)),
                  SicklerTextFormField(controller: email, hintText: "Email"),
                  SizedBox(height: relHeight(kDefaultPadding, context)),
                  SicklerPasswordField(
                      controller: password, hintText: "Password"),
                  SizedBox(
                    height: relHeight(60, context),
                  ),
                  SicklerButton(
                      colour: kPurple80,
                      buttonLabel: "Create Account",
                      onPressed: () {
                        HapticFeedback.lightImpact();
                        Feedback.forTap(context);
                      },
                      isPrimaryButton: true),
                  SizedBox(
                    height: relHeight(kDefaultPadding, context),
                  ),
                  GestureDetector(
                    onTap: () {
                      HapticFeedback.lightImpact();
                      Feedback.forTap(context);
                      Navigator.popAndPushNamed(
                          context, SicklerSignInScreen.id);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Center(
                        child: Text(
                          "Sign In Instead",
                          style: kFootNote.copyWith(
                              color: Colors.white, fontSize: 14),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
