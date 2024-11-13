import 'package:flutter__design_1/homescreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
// ignore: depend_on_referenced_packages
import 'package:google_fonts/google_fonts.dart';

class Trycoffe extends StatelessWidget {
  const Trycoffe({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(top: 100, bottom: 40),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 0, 0, 0),
         
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "DHX COFFEE",
              style: GoogleFonts.saira(
                  fontSize: 50, color: Colors.white),
            ),
            Column( children: [ 
              Text("yout inspired is stuck?,Lets go coffee",style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: 1,
              ),
              ),
               SizedBox(height: 80,),
               InkWell( 
                splashColor: Colors.black,
                
                onTap: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>HomeScreen(),));

                },
                child: Container(
                  padding: EdgeInsets.symmetric( vertical:15,horizontal: 30) ,
                  decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Text("Get Start",style:GoogleFonts.roboto (
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight:FontWeight. bold,
                    letterSpacing: 1,

                  )
                  ) ,
                ),
               )
            ],)
          ],
        ),
      ),
    );
  }
}
