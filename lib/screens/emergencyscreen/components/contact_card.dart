import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';


class SicklerContactCard extends StatelessWidget {
  final String contactName;
  final String? email;
  final String? address;
  final String? imageLink;
  final String? phone;
  final String? relation;
  final VoidCallback? onPressed;

  const SicklerContactCard(
      {Key? key,
      required this.contactName,
      this.phone,
      this.email,
      this.address,
      this.relation,
      this.imageLink,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding),
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
      decoration: BoxDecoration(
          color: Theme.of(context).cardColor,
          borderRadius: BorderRadius.circular(32)),
      child: Row(
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  "assets/svg/phone_icon.svg",
                  color: kRed,
                ),
                const SizedBox(
                  width: kDefaultPadding / 2,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        contactName,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1!
                            .copyWith(fontSize: 18),
                      ),
                      const SizedBox(
                        height: kDefaultPadding / 2,
                      ),
                      Text(relation ?? "relation",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 12)),
                      Text(phone ?? "Phone",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 12)),
                      Text(email ?? "Email",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 12)),
                      Text(address ?? "address",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontSize: 12)),
                      GestureDetector(
                        onTap: () {
                          Feedback.forTap(context);
                          HapticFeedback.lightImpact();
                          onPressed;
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(
                              right: kDefaultPadding / 2,
                              top: kDefaultPadding / 2,
                              bottom: kDefaultPadding / 2),
                          child: SvgPicture.asset(
                            "assets/svg/horizontal_menu_dot_icon.svg",
                            color: kDark60,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
                 height: 120,
                width: 120,
                decoration: BoxDecoration(
                  color: kRed20,
                  borderRadius: BorderRadius.circular(22),
                  image: DecorationImage(image: AssetImage(imageLink ?? "")),
                )),
          )
        ],
      ),
    );
  }
}
