const RootRoute = '/';

const OverViewPageRoute = "/overview";
const OverViewDisplayName = "Overview";

const DriversPageRoute = "/drivers";
const DriversDisplayName = "Drivers";

const ClientsPageRoute = "/clients";
const ClientsDisplayName = "Clients";

const AuthenticationPageRoute = "/auth";
const AuthenticationDisplayName = "Authentication";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuList = [
  MenuItem(OverViewDisplayName, OverViewPageRoute),
  MenuItem(DriversDisplayName, DriversPageRoute),
  MenuItem(ClientsDisplayName, ClientsPageRoute),
  MenuItem(AuthenticationDisplayName, AuthenticationPageRoute),
];
