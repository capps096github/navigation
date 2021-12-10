import 'package:flutter/services.dart';

import '../app_exporter.dart';

class LinkCopier extends StatelessWidget {
  const LinkCopier({
    Key? key,
    this.iconColor = white,
    required this.backgroundColor,
    this.pageName,
  }) : super(key: key);

  final Color iconColor, backgroundColor;

  final String? pageName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        backgroundColor: iconColor,
        child: IconButton(
          onPressed: () async {
            await Clipboard.setData(
              ClipboardData(
                text: 'https://xecrets.web.app/$pageName',
              ),
            );

            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Link Copied to Clipboard",
                  style: TextStyle(
                    color: backgroundColor,
                  ),
                ),
                backgroundColor: iconColor,
              ),
            );
          },
          icon: Icon(Icons.link, color: backgroundColor),
        ),
      ),
    );
  }
}
