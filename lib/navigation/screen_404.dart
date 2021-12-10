import 'package:flutter/services.dart';

import '../app_exporter.dart';

class Screen404 extends StatelessWidget {
  const Screen404({Key? key, required this.state}) : super(key: key);
  final GoRouterState state;
  @override
  Widget build(BuildContext context) {
//  This widget displays the 404 svg image in the center
    return Scaffold(
      backgroundColor: white,
      body: ListView(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: SvgPicture.asset(
                'images/404_image.svg',
                semanticsLabel: '404',
              ),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Oops! Page not found",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "The page you are looking for does not exist.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),

          const SizedBox(height: 20),
         
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "If you think this is a bug, please report it to the developer.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),

          const SizedBox(height: 20),

          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "If you are the developer, please check the logs for more information.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ),

          const SizedBox(height: 20),

          // Display the logs here in a semi transparent container and color red for the text
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red.withOpacity(0.5),
                ),
                child: Text(
                  "Logs: ${state.error.toString()}",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ),
            ),
          ),
          // This is a button which when pressed copies the URL to the clipboard
          TextButton(
            onPressed: () {
              Clipboard.setData(
                ClipboardData(
                  text: state.error.toString(),
                ),
              );
            },
            child: Text(
              "Copy Error URL to clipboard",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
        ],
      ),
    );
  }
}
