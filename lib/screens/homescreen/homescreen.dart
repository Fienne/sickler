import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/constants.dart';
import 'package:sickler/global_components/appbar.dart';
import 'package:sickler/screens/homescreen/components/stats_card.dart';

import 'components/recommendation_card.dart';

class SicklerHomeScreen extends StatefulWidget {
  const SicklerHomeScreen({Key? key}) : super(key: key);

  @override
  _SicklerHomeScreenState createState() => _SicklerHomeScreenState();
}

class _SicklerHomeScreenState extends State<SicklerHomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: SicklerAppBar(
        leading: Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(15),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding, top: kDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Good morning",
                      style: Theme.of(context).textTheme.headline2,
                    ),
                    Text(
                      "Name",
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const RecommendationCard(
                  title: "You haven't been following your regimen.",
                  description:
                      "You should drink more water and don't forget to take your medicines."),
              Padding(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding, top: kDefaultPadding2x),
                child: Text(
                  "At a Glance",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  StatsCard(
                    iconLink: "assets/svg/water_drop.svg",
                    statsTitle: "Water",
                    statsValue: 1.7,
                    statsUnit: "Litres",
                    statsTimestamp: "20 min",
                    colour: kBlue,
                    bgColour: kBlue20,
                  ),
                  StatsCard(
                    iconLink: "assets/svg/hb_icon.svg",
                    statsTitle: "Hb",
                    statsValue: 12.8,
                    statsUnit: "g/dl",
                    statsTimestamp: "Feb 13",
                    colour: kFuchsia,
                    bgColour: kFuchsia20,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  StatsCard(
                    iconLink: "assets/svg/o2_icon.svg",
                    statsTitle: "Oxygen",
                    statsValue: 81,
                    statsUnit: "%",
                    statsTimestamp: "28 sec ago",
                    colour: kOrange,
                    bgColour: kOrange20,
                  ),
                  StatsCard(
                    iconLink: "assets/svg/drug_icon.svg",
                    statsTitle: "Drugs",
                    statsValue: 6,
                    statsUnit: "pm",
                    statsTimestamp: "tonight",
                    colour: kPurple,
                    bgColour: kPurple20,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: kDefaultPadding, top: kDefaultPadding2x),
                child: Text(
                  "Reminders",
                  style: Theme.of(context).textTheme.headline2,
                ),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding * .5),
                decoration: BoxDecoration(
                  color: Theme.of(context).cardColor,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: SvgPicture.asset(
                        "assets/svg/drug_icon.svg",
                        color: kBlue,
                      ),
                    ),
                    Positioned(
                      top: 0,
                      left: kDefaultPadding2x,
                      child: Text(
                        "Antalgex",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 18),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Checkbox(
                        visualDensity: VisualDensity.compact,
                        value: true,
                        onChanged: (bool? value) {
                          setState(() {
                            value = !value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
