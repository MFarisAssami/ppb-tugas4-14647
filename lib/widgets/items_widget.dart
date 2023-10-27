import 'package:flutter/material.dart';
import 'package:flutter_orderfood/pages/single_item_page.dart';

class ItemsWidget extends StatelessWidget {
  final List<String> imagePaths = [
    "assets/images/agor.jpg",
    "assets/images/begor.jpg",
    "assets/images/nasgor.jpg",
    "assets/images/lelegor.jpg",
  ];

  final List<String> itemTitles = [
    "Ayam Goreng",
    "Bebek Goreng",
    "Nasi Goreng",
    "Lele Goreng",
  ];

  final List<String> itemMean = [
    "Ayam dengan bumbu kuning",
    "Bebek yang kaya akan rasa",
    "Nasi goreng telur spesial",
    "Lele yang di padu dengan kaldu",
  ];

  final List<int> itemPrices = [
    20000,
    22000,
    18000,
    16000,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: 0.78,
      children: [
        for (int i = 0; i < imagePaths.length; i++)
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleItemPage(
                    imagePath: imagePaths[i],
                    itemTitle: itemTitles[i],
                    itemMean: itemMean[i],
                    itemPrice: itemPrices[i],
                  ),
                ),
              );
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
                        "\Rp${itemPrices[i]}",
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
