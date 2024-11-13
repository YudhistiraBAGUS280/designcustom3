import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemsScreen extends StatelessWidget {
  String img;
 SingleItemsScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 2,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Center(
                  child: Image.asset(
                    "asset/$img.jpg",
                    width: MediaQuery.of(context).size.width / 1.2,
                    height: 120,
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}