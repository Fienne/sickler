import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PersonalInfoListItem extends StatelessWidget {
  final bool? isNumField;
  final String title;
  final TextEditingController controller;
  final String iconLink;
  final Color iconColour;
  final Color iconBgColour;
  final String? unit;
  const PersonalInfoListItem(
      {Key? key,
      required this.title,
      required this.controller,
      required this.iconLink,
      required this.iconColour,
      required this.iconBgColour,
      this.unit,
      this.isNumField = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              padding: const EdgeInsets.all(kDefaultPadding - 4),
              height: relWidth(50, context),
              width: relWidth(50, context),
              decoration: BoxDecoration(
                color: iconBgColour,
                borderRadius: BorderRadius.circular(kDefaultPadding),
              ),
              child: SvgPicture.asset(
                iconLink,
                color: iconColour,
              ),
            ),
            SizedBox(
              width: relWidth(kDefaultPadding, context),
            ),
            Expanded(
              flex: 2,
              child: Text(
                title,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ),
            Expanded(
              // flex: 1,
              child: TextFormField(
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(fontSize: 18),
                keyboardType:
                    isNumField! ? TextInputType.number : TextInputType.text,
                controller: controller,
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(kDefaultPadding),
                  ),
                  isDense: true,
                  filled: true,
                  hintStyle: Theme.of(context).textTheme.bodyText2!.copyWith(
                        color: kDark60,
                      ),
                  hintText: unit,
                  fillColor: kDark20,
                ),
              ),
            ),
          ],
        ),
        Divider(
          height: kDefaultPadding * 2.5,
          color: Theme.of(context).cardColor,
          thickness: 1,
        ),
      ],
    );
  }
}
