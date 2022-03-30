import 'package:flutter/material.dart';
import 'package:sickler/constants.dart';
import 'package:sickler/global_components/sickler_button.dart';
import '../../global_components/appbar.dart';
import 'components/contact_card.dart';

class EmergencyContactsScreen extends StatelessWidget {
  static const id = "emergency contact screen";

  const EmergencyContactsScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: const SicklerAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: kDefaultPadding),
                  child: Text(
                    "Emergency Contacts",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
                const SizedBox(height: 30),
                const SicklerContactCard(
                  contactName: "Contact Name",
                  phone: "670000000",
                  address: "Mile 9 bambili",
                  relation: "Brother",
                ),
                const SicklerContactCard(
                  contactName: "Contact name",
                  phone: "670000000",
                  address: "Mile 9 bambili",
                  relation: "Brother",
                ),
                const SizedBox(
                  height: 40,
                ),
                SicklerTransparentButton(
                    buttonLabel: "Add Contact",
                    colour: kRed,
                    buttonBgColour: kRed20,
                    onPressed: () {})
              ],
            ),
          ),
        ));
  }
}
