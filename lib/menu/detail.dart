import 'package:flutter/cupertino.dart';

import '../app_exporter.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({
    Key? key,
    required this.itemIndex,
    // required this.fromScreen,
  }) : super(key: key);

  final String itemIndex;

  // final String fromScreen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: detailColor,
      appBar: AppBar(
        backgroundColor: detailColor,
        elevation: 0,
        leading: BackButton(
          color: white,
          onPressed: () {
            // Incase the screen we are deep linking from is provided,
            //then we shall go to that screen, else we pop
            // if (fromScreen == Routes.homeRoute.path) {
            //   context.go(fromScreen);
            // } else {
            context.pop();
            // }
          },
        ),
        centerTitle: true,
        title: Text(
          'Item $itemIndex Details',
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              CupertinoIcons.decrease_indent,
              color: white,
              size: 60,
            ),
          ),
          Center(
            child: Text(
              'Item $itemIndex',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: white,
                fontSize: 40,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
