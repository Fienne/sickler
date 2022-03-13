import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sickler/global_components/appbar.dart';

import '../constants.dart';

class SicklerScaffoldBodyWithTopImage extends StatelessWidget {
  final Widget child;
  final String? topBgImageLink;
  final Color? topBgColour;
  final bool? showBackButton;
  final bool? showAppBar;
  final String? pageTitle;
  final bool showPageTitile;
  const SicklerScaffoldBodyWithTopImage(
      {Key? key,
      required this.child,
      this.topBgColour,
      this.topBgImageLink,
      this.showAppBar = true,
      this.showBackButton = true,
      this.pageTitle,
      this.showPageTitile = false,
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: showAppBar!
          ? SicklerAppBar(
              leading: showBackButton!
                  ? Padding(
                      padding: const EdgeInsets.only(
                          left: kDefaultPadding, top: kDefaultPadding2x),
                      child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset("assets/svg/back_icon.svg")),
                    )
                  : null,
            )
          : null,
      body: SingleChildScrollView(
        child: Stack(
          alignment: AlignmentDirectional.topStart,
          children: [
            Container(
              decoration: BoxDecoration(
                color: topBgColour ?? Theme.of(context).primaryColor,
                image: topBgImageLink != null
                    ? DecorationImage(
                        image: AssetImage(topBgImageLink!),
                      )
                    : null,
              ),
              height: screenSize.height * .3,
              width: screenSize.width,
              child: Padding(
                padding:  EdgeInsets.only(left: kDefaultPadding2x, top: screenSize.height *.15),
                child: showPageTitile? Text(
                  
                  pageTitle!,
                  textAlign: TextAlign.left,
                  style: Theme.of(context).textTheme.headline2,
                ) : null,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: screenSize.height * .25),
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding2x),
                    topRight: Radius.circular(kDefaultPadding2x),
                  ),
                ),
                width: screenSize.width,
                child: child,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
