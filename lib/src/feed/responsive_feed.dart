import 'package:flutter/material.dart';
import 'package:aktua_amplify/src/feed/mobile_feed.dart';
import 'package:aktua_amplify/src/feed/tablet_feed.dart';
import 'package:aktua_amplify/src/feed/desktop_feed.dart';

import 'package:aktua_amplify/src/responsive/responsive_layout.dart';

class ResponsiveFeed extends StatelessWidget {
  const ResponsiveFeed({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobileBody: MobileFeed(),
      tabletBody: TabletFeed(),
      desktopBody: DesktopFeed(),
    );
  }
}
