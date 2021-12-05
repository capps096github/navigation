// This is the app's launch screen that first shows a splash screen,
// then checks if the user is logged in and shows the [HomeScreen]
// else it will prompt the user to l;ogin first

import '../app_exporter.dart';
import '../home_screen.dart';
import '../login_screen.dart';
import '../splash_screen.dart';

class LaunchScreen extends ConsumerWidget {
  const LaunchScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context,watch) {
    final appLaunch = watch(appLaunchProvider);
    final appNavigation = watch(appNavigationNotifier);

    final isUserLoggedIn = appNavigation.isLoggedIn;

    return appLaunch.when(
      data: (data) {
        if (!isUserLoggedIn) {
          return const LoginScreen();
        } else {
          return const HomeScreen();
        }
      },
      error: (error, stackTrace) => ErrorWidget(error),
      loading: () => const SplashScreen(),
    );
  }
}

// This provider loads all the required app functionality for the app to launch
final appLaunchProvider = FutureProvider<void>((ref) async {
  return ref.read(appNavigationNotifier).initializeApp();
});
