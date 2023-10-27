import 'package:flutter/material.dart';
import 'package:flutter_orderfood/pages/home_page.dart';

class TotalCartPage extends StatelessWidget {
  final int totalHarga;
  final String itemTitle;
  final int itemCount;

  TotalCartPage({
    required this.totalHarga,
    required this.itemTitle,
    required this.itemCount,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 35,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                "Pesanan:",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "Item: $itemTitle", // Menampilkan itemTitle
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "Jumlah: $itemCount", // Menampilkan itemCount
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "Total Harga:",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              Text(
                "data berhasil di simpan",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                "\Rp. $totalHarga",
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              ElevatedButton(
                style: TextButton.styleFrom(backgroundColor: Colors.white),
                onPressed: () {
                  Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(
                      builder: (context) => homePage(),
                    ),
                    (Route<dynamic> r) => false,
                  );
                },
                child: Text(
                  "Bayar",
                  style: TextStyle(
                    color: Color(0xFF232227),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
