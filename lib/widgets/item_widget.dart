import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/images/teh.jpg",
    "assets/images/jeruk.jpg",
    "assets/images/es.jpg",
  ];

  final List<String> itemTitles = [
    "Es Teh",
    "Es jeruk",
    "Air Es",
  ];

  final List<String> itemPrices = [
    "RP.3.000",
    "RP.5.000",
    "RP.2.000",
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.76,
      children: [
        for (int i = 0; i < imagePaths.length; i++)
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, "singleItemPage");
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF232227),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 1,
                    blurRadius: 8,
                  ),
                ],
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      imagePaths[i],
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                    width: 120,
                    height: 120,
                  ),
                  SizedBox(height: 10), // Jarak antara gambar dan teks
                  Text(
                    itemTitles[i],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        itemPrices[i],
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.add_shopping_cart,
                        size: 27,
                        color: Colors.white,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
      ],
    );
  }
}
