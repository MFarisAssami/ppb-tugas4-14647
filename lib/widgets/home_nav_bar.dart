import 'package:flutter/material.dart';

class HomeNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: Color(0xFF232227), // Mengatur warna latar belakang
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            spreadRadius: 1,
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.person,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.favorite,
            color: Colors.white,
            size: 35,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFEFB322),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          Icon(
            Icons.email,
            color: Colors.white,
            size: 35,
          ),
          Icon(
            Icons.notifications,
            color: Colors.white,
            size: 35,
          ),
        ],
      ),
    );
  }
}
