import '../menu/detail.dart';
import '../menu/list_screen.dart';

import '../app_exporter.dart';
import '../home_screen.dart';
import '../login_screen.dart';

class Routes {
// All App routes
  static final routes = <GoRoute>[appLaunch];

// App Restoration Id
  static const String restorationScopeId = 'navigation_app';


// App Launch Route
  static final appLaunch = GoRoute(
    path: '/',
    name: 'launch',
    builder: (context, state) => const LaunchScreen(),
    routes: appSubRoutes,
  );

// All Sub Routes of the appLainch route
  static final appSubRoutes = <GoRoute>[
    loginRoute,
    homeRoute,
    listRoute,
  ];

  // Login route
  static final loginRoute = GoRoute(
    path: 'login',
    name: 'login',
    builder: (context, state) => const LoginScreen(),
  );

  //  home route
  static final homeRoute = GoRoute(
    path: 'home',
    name: 'home',
    builder: (context, state) => const HomeScreen(),
  );

  // list route
  static final listRoute = GoRoute(
    path: 'list',
    name: 'list',
    builder: (context, state) => const ListScreen(),
    routes: [
      detailsRoute,
    ],
  );

  // This is the details screen route for the list
  // and it is a sub route to the list route
  static final detailsRoute = GoRoute(
    name: 'detail',
    // This is the index of the list item, and to pass parameters we use the :variable format
//! sub-route path may not start or end with e.g( /: /detail/:index)
//* so we write it as 'detail/:index'

    path: 'detail/:index',
    builder: (context, state) {
      final index = state.params['index']!;
      // final from = state.params['from']!;
      return DetailScreen(itemIndex: index);
    },
  );
}
