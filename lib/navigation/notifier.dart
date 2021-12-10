import 'dart:async';


import '../app_exporter.dart';

// This will notify our navigator widget of any changes in the app
class NavigationNotifier extends ChangeNotifier {
//This lets us know wether the app is initalized or not,
// buh in a real world app, we put here the firebase inits

  bool _initialized = false;

  // this checks if user has logged into the app
  bool _loggedIn = true;

  bool get isInitialized => _initialized;
  bool get isLoggedIn => _loggedIn;

// A future for initializing the app
  Future<void> initializeApp() {
    return Future.delayed(const Duration(milliseconds: 2000), () {
      _initialized = true;
      notifyListeners();
    });
  }

  void login() {
    _loggedIn = true;
    notifyListeners();
  }
}

final appNavigationNotifier = ChangeNotifierProvider<NavigationNotifier>(
  (ref) {
    return NavigationNotifier();
  },
);
