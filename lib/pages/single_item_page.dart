import 'package:flutter/material.dart';
import 'package:flutter_orderfood/pages/single_item_nav_bar.dart';

class SingleItemPage extends StatefulWidget {
  final String imagePath;
  final String itemTitle;
  final String itemMean;
  final int itemPrice;

  SingleItemPage({
    required this.imagePath,
    required this.itemTitle,
    required this.itemMean,
    required this.itemPrice,
  });

  @override
  _SingleItemPageState createState() => _SingleItemPageState();
}

class _SingleItemPageState extends State<SingleItemPage> {
  int itemCount = 1;
  int totalHarga = 0; // Tambahkan variabel total harga

  // Metode untuk menambah jumlah item
  void incrementItem() {
    setState(() {
      itemCount++;
      updateTotalHarga(); // Perbarui total harga setiap kali barang ditambahkan
    });
  }

  // Metode untuk mengurangi jumlah item
  void decrementItem() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
        updateTotalHarga(); // Perbarui total harga setiap kali barang dikurangi
      });
    }
  }

  // Metode untuk menghitung total harga
  void updateTotalHarga() {
    setState(() {
      totalHarga = itemCount * widget.itemPrice;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF232227),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 25, left: 15, right: 10),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                // Tambahkan logika untuk menambah item ke keranjang di sini
                InkWell(
                  onTap: () {
                    // Tambahkan logika untuk menambah item ke keranjang di sini
                  },
                  child: Icon(
                    Icons.shopping_cart,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Image.asset(
                widget.imagePath,
                height: MediaQuery.of(context).size.height / 1.7,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        widget.itemTitle, // Menggunakan itemTitle dari widget
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      // Text(
                      //   widget.itemMean,
                      //   style: TextStyle(
                      //     fontSize: 18,
                      //     color: Colors.white60,
                      //   ),
                      // ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              decrementItem();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.remove,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                          Text(
                            " $itemCount ",
                            style: TextStyle(color: Colors.white),
                          ),
                          InkWell(
                            onTap: () {
                              incrementItem();
                            },
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Icon(
                                Icons.add,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  '\Rp. ${widget.itemPrice.toStringAsFixed(2)}',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: SingleItemNavBar(
        itemTitle:
            widget.itemTitle, // Gantilah 'Nama Barang' dengan nama yang sesuai
        totalHarga: totalHarga,
        itemCount: itemCount,
        itemPrice: widget.itemPrice,
      ),
    );
  }
}
