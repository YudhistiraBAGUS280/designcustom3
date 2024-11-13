import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15),
      height: 80,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 26, 14, 14),
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
          Icon(Icons.home,color: Colors.orange,size: 35,),
          Icon(Icons.favorite_outline,color: Color.fromARGB(255, 241, 240, 237),size: 35,),
          Icon(Icons.notifications,color: const Color.fromARGB(255, 255, 255, 255),size: 35),
          Icon(Icons.person,color: const Color.fromARGB(255, 255, 255, 255),size: 35),
        ],
      ),
    );
  }
}