import 'package:flutter/material.dart';
import 'package:flutter_orderfood/pages/total_cart_page.dart';

class SingleItemNavBar extends StatelessWidget {
  final String itemTitle;
  final int itemCount;
  final int itemPrice;

  SingleItemNavBar({
    Key? key,
    required this.itemTitle,
    required this.itemCount,
    required this.itemPrice,
    required int totalHarga,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Menghitung total harga
    int totalHarga = itemCount * itemPrice;

    // Jika jumlah barang adalah 1, total harga sama dengan itemPrice
    if (itemCount == 1) {
      totalHarga = itemPrice;
    }

    return Container(
      height: 130,
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total harga :",
                style: TextStyle(
                  color: Colors.white60,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "\Rp. $totalHarga",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ],
          ),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TotalCartPage(
                    totalHarga: totalHarga,
                    itemTitle: itemTitle,
                    itemCount: itemCount,
                  ),
                ),
              );
            },
            child: Text(
              "Pesan",
              style: TextStyle(
                color: Color(0xFF232227),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
