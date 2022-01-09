import 'package:dynamic_theme/pages/more_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaquary =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;
    print("Home Screen Called");
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
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
                "Navigate to next screen",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            )),
            Container(
              child: IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  size: 60,
                  color: Theme.of(context).buttonColor,
                ),
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoreScreen()),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
