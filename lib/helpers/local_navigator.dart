import 'package:adminpanel/constants/controllers.dart';
import 'package:adminpanel/routings/router.dart';
import 'package:adminpanel/routings/routes.dart';
import 'package:flutter/material.dart';

Navigator localNavigator() => Navigator(
  key:  navigationController.navigatorKey,
  initialRoute: OverViewPageRoute,
  onGenerateRoute: generateRoute,
);
