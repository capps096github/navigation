import '../app_exporter.dart';

// This is the app we are running
class NavigationApp extends ConsumerWidget {
  const NavigationApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, watch) {
    final appRouter = watch(appRouterProvider);

    return MaterialApp.router(
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
      color: maroon,
      title: "Navigator 2 Demo",
      theme: ThemeData(
        primaryColor: maroon,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
