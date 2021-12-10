import '../app_exporter.dart';
import 'screen_404.dart';

// This is an Itegrated app Router privider embedded with the navigation Notifier
final appRouterProvider = Provider<GoRouter>(
  (ref) {
    final navigationNotifier = ref.watch(appNavigationNotifier);

    // Default constructor to configure
//a [GoRouter] with a routes builder and an error page builder.
    final appRouter = GoRouter(
      routes: Routes.routes,
      initialLocation: Routes.appLaunch.path,
      urlPathStrategy: UrlPathStrategy.path,
      restorationScopeId: Routes.restorationScopeId,
      // This notifier is used to notify the router of the current navigation changes in the app.

      refreshListenable: navigationNotifier,

      errorBuilder: (context, state) => Screen404(state: state),
    );

    return appRouter;
  },
);
