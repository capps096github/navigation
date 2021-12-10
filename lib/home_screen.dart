import 'package:flutter/cupertino.dart';

import 'app_exporter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// This is a home screen widget that juhs welcome the user to the app

// This is the index of the item we want to go to and view its details
    const listItemIndex = 400;

    return Scaffold(
      backgroundColor: maroon,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.home,
                color: white,
                size: 60,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Welcome Home',
              style:
                  Theme.of(context).textTheme.headline4!.copyWith(color: white),
            ),
            LinkCopier(
              backgroundColor: maroon,
              pageName: Routes.homeRoute.name,
            ),
            const Spacer(),
            TextButton.icon(
              onPressed: () {
                context.goNamed(
                  'detail',
                  params: {
                    'index': listItemIndex.toString(),
                  },
                );
              },
              style: TextButton.styleFrom(
                primary: white,
                backgroundColor: detailColor,
              ),
              icon: const Icon(CupertinoIcons.link),
              label: const Text("Deep link to Item $listItemIndex"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          child: const Text('Go to the list'),
          style: TextButton.styleFrom(
            primary: maroon,
            backgroundColor: white,
          ),
          onPressed: () {
            context.go('/list');
            // or
            // context.goNamed('list');
            // If you have specified the name parameter in the go route,
          },
        ),
      ),
    );
  }
}
