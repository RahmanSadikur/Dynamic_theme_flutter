import 'package:dynamic_theme/provider/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MoreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaquary =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    var themeprovider = Provider.of<ThemeChanger>(context);
    print("More Screen Called");
    return Scaffold(
      appBar: AppBar(
        title: Text("More"),
      ),
      body: Container(
        height: mediaquary,
        width: double.infinity,
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: Container(
              child: Text(
                "Change theme",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            )),
            Container(
              child: IconButton(
                icon: Icon(
                  themeprovider.islightbool
                      ? Icons.toggle_on
                      : Icons.toggle_off,
                  size: 60,
                  color: Theme.of(context).buttonColor,
                ),
                onPressed: () => themeprovider.setTheme(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
