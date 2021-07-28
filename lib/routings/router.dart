
import 'package:adminpanel/pages/auth/authentication.dart';
import 'package:adminpanel/pages/clients/clients.dart';
import 'package:adminpanel/pages/drivers/drivers.dart';
import 'package:adminpanel/pages/overview/overview.dart';
import 'package:adminpanel/routings/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case OverViewPageRoute:
      return _getPageRoute(OverViewPage());
    case AuthenticationPageRoute:
      return _getPageRoute(AuthenticationPage());

    case ClientsPageRoute:
      return _getPageRoute(ClientsPage());

    case DriversPageRoute:
      return _getPageRoute(DriversPage());

    default:
      return _getPageRoute(OverViewPage());
  }
}

PageRoute _getPageRoute(Widget child) =>
    MaterialPageRoute(builder: (context) => child);
