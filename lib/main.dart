import 'package:adminpanel/controllers/menu_controller.dart';
import 'package:adminpanel/controllers/navigation_controller.dart';
import 'package:adminpanel/layout.dart';
import 'package:adminpanel/pages/404/error.dart';
import 'package:adminpanel/pages/auth/authentication.dart';
import 'package:adminpanel/routings/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';

import 'constants/style.dart';

void main() {
  Get.put(MenuController());
  Get.put(NavigationController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AuthenticationPageRoute,
      unknownRoute: GetPage(
        name: "not-found",
        page: () => PageNotFound(),
        transition: Transition.fadeIn,
      ),
      getPages: [
        GetPage(name: RootRoute, page: () => SiteLayout()),
        GetPage(
          name: AuthenticationPageRoute,
          page: () => AuthenticationPage(),
        ),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: light,
        textTheme: GoogleFonts.mulishTextTheme(Theme.of(context).textTheme)
            .apply(bodyColor: Colors.black),
        pageTransitionsTheme: PageTransitionsTheme(builders: {
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
        }),
        primaryColor: Colors.blue,
      ),
    );
  }
}
