import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/global_components/appbar.dart';
import 'package:sickler/screens/addscreen/components/add_screen_list_item.dart';
import 'package:sickler/screens/hbscreen/hb_screen.dart';
import '../../constants.dart';
import '../../size_config.dart';

class AddScreen extends StatelessWidget {
  static const id = "add screen";
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const SicklerAppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding2x),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Logs",
                style: Theme.of(context).textTheme.headline2,
              ),
              const SizedBox(
                height: kDefaultPadding2x,
              ),
              AddScreenListItem(
                colour: kPurple80,
                bgColour: kPurple20,
                iconLink: "assets/svg/emergency_icon.svg",
                title: "Add a Crises Event",
                onPressed: () {
                  Navigator.pushNamed(context, "routeName");
                },
              ),
              AddScreenListItem(
                colour: kBlue,
                bgColour: kBlue20,
                iconLink: "assets/svg/water_drop.svg",
                title: "Add Water",
                onPressed: () {
                  Navigator.pushNamed(context, HbScreen.id);
                },
              ),
              AddScreenListItem(
                colour: kFuchsia,
                bgColour: kFuchsia20,
                iconLink: "assets/svg/hb_icon.svg",
                title: "Haemoglobin Measurement",
                onPressed: () {
                  Navigator.pushNamed(context, HbScreen.id);
                },
              ),
              AddScreenListItem(
                colour: kOrange,
                bgColour: kOrange20,
                iconLink: "assets/svg/o2_icon.svg",
                title: "Oxygen Measurement",
                onPressed: () {
                  Navigator.pushNamed(context, "routeName");
                },
              ),
              AddScreenListItem(
                colour: kPurple80,
                bgColour: kPurple20,
                iconLink: "assets/svg/drug_icon.svg",
                title: "Add Drugs",
                onPressed: () {
                  Navigator.pushNamed(context, "routeName");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
