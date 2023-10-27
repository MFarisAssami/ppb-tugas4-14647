import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_orderfood/pages/home_page.dart';
import 'package:flutter_orderfood/pages/single_item_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppstate();
}

class _MyAppstate extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => homePage(),
        "singleItemPage": (context) => SingleItemPage(
              imagePath: '',
              itemTitle: '',
              itemMean: '',
              itemPrice: 0,
            ),
      },
    );
  }
}
