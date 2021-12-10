// Widget that displays a list of items.

import '../app_exporter.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Screen'),
        backgroundColor: blueGrey,
        actions: [
          LinkCopier(
            backgroundColor: blueGrey,
            pageName: Routes.listRoute.path,
          ),
        ],
      ),
      body: ListView.builder(
        key: PageStorageKey(Routes.listRoute.path),
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('Item $index'),
            tileColor: Colors.blueGrey[100 * (index % 9)],
            onTap: () {
              //go to a screen named [details] then pass the index as a parameter
              // to the details screen
              //the 'index' is the parameter name that you need to have put when declaring the route of the datails screen in the format ':index',
              // and the index.toString() is the value og the list item that you want to pass to the details screen
              context.goNamed('detail', params: {
                'index': index.toString(),
              });
            },
          );
        },
      ),
    );
  }
}
