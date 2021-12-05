// This is a login screen widget

import 'app_exporter.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: accent,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.login,
              color: maroon,
              size: 40,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            'Login',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline4!.copyWith(
                  color: maroon,
                ),
          ),
          const SizedBox(height: 20),
          Text(
            'Lets get you started',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  color: maroon,
                ),
          ),
          const SizedBox(height: 20),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: MaterialButton(
          clipBehavior: Clip.antiAlias,
          color: maroon,
          child: const Text(
            'Login',
            style: TextStyle(fontWeight: FontWeight.bold, color: accent),
          ),
          onPressed: () {
            context.read(appNavigationNotifier).login();
            // context.go('/home');
          },
        ),
      ),
    );
  }
}
