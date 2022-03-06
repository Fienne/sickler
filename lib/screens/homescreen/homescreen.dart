import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/constants.dart';
import 'package:sickler/global%20components/appbar.dart';

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
              Container(
                width: double.infinity,
                height: 130,
                decoration: BoxDecoration(
                  color: kOrange80,
                  borderRadius: BorderRadius.circular(34),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text(
                              "You haven't been following your regimen.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.white),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              "You should drink more water and don't forget to take your medicines.",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(color: Colors.white),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: kDefaultPadding,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          width: 130 - kDefaultPadding,
                          height: 130 - kDefaultPadding,
                          decoration: BoxDecoration(
                              color: kOrange,
                              borderRadius: BorderRadius.circular(24)),
                        ),
                      )
                    ],
                  ),
                ),
              ),
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
              Container(
                width: (screenSize.width - (3 * kDefaultPadding)) * .5,
                height: 100,
                padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPadding,
                    vertical: kDefaultPadding * .5),
                decoration: BoxDecoration(
                  color: kBlue20,
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Text(
                        "Water",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(color: kBlue),
                      ),
                    ),
                    Positioned(
                      top: 0,
                      right: 0,
                      child: SvgPicture.asset(
                        "assets/svg/water_drop.svg",
                        color: kBlue,
                      ),
                    ),
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: Row(
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                    text: "1.7",
                                    style:
                                        Theme.of(context).textTheme.headline1),
                                TextSpan(
                                    text: "Litres",
                                    style:
                                        Theme.of(context).textTheme.bodyText2),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 9,
                      child: Text(
                        "47 min",
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2!
                            .copyWith(color: kBlue80, fontSize: 11),
                      ),
                    ),
                  ],
                ),
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
