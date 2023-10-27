import 'package:flutter/material.dart';
import 'package:flutter_orderfood/widgets/home_nav_bar.dart';
import 'package:flutter_orderfood/widgets/items_widget.dart';
import 'package:flutter_orderfood/widgets/item_widget.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Mengubah length ke 2 karena hanya memiliki 2 tab
      child: Scaffold(
        backgroundColor: Color(0xFF232227),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.sort_rounded,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 35,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Lalapan Jeki",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(
                    "Paling sedap dan Enak",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 22,
                    ),
                  ),
                ),
                SizedBox(height: 30),
                TabBar(
                  isScrollable: true,
                  indicator: BoxDecoration(),
                  labelStyle: TextStyle(fontSize: 20),
                  labelPadding: EdgeInsets.symmetric(horizontal: 20),
                  tabs: [
                    Tab(text: "Makanan"),
                    Tab(text: "Minuman"),
                  ],
                ),
                Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ItemsWidget(),
                      ItemWidget(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
