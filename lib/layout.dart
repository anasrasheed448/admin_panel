import 'package:adminpanel/helpers/responsiveness.dart';
import 'package:adminpanel/widgets/large_screen.dart';
import 'package:adminpanel/widgets/side_menu.dart';
import 'package:adminpanel/widgets/small_screen.dart';
import 'package:adminpanel/widgets/top_nav.dart';
import 'package:flutter/material.dart';

class SiteLayout extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topNavigationBar(context, scaffoldKey),
      extendBodyBehindAppBar: true,
      key: scaffoldKey,
      drawer: Container(width: 170, child: SideMenu()),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
