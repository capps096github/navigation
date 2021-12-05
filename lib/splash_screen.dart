// This is a splash screen that is shown when the application is first launched.
// It is a simple splash screen that shows the application's logo while loading.

import 'package:flutter/cupertino.dart';

import 'app_exporter.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: maroon,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: InkWell(
                onTap: () => context.go('/home'),
                customBorder: const CircleBorder(),
                child: const Icon(
                  CupertinoIcons.sparkles,
                  size: 128,
                  color: white,
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Align(
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
