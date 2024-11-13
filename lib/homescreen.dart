import 'package:flutter__design_1/BottomHome.dart';
import 'package:flutter__design_1/items_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: depend_on_referenced_packages


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override @override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Color.fromARGB(255, 0, 0, 0), // Add this line to set the background color to grey
    body: SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 15),
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.notifications,
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
              child: Text("DHX COFFE",
                style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal:15,vertical:20 ),
              width: MediaQuery.of(context).size.width,
              height: 60,
              alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 65, 32, 32),
              borderRadius: BorderRadius.circular(10)
            ),
            child:TextFormField(
              decoration: InputDecoration(
                hintText: "find your coffe",
                hintStyle: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                ),
                prefixIcon: Icon(Icons.search,size:30,color:Colors.white.withOpacity(0.5))
              ),
            )
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.brown,
              unselectedLabelColor: Colors.white.withOpacity(0.5),
              isScrollable: true,
              indicator: UnderlineTabIndicator (borderSide:BorderSide(
                width: 3,
                color: Colors.brown,
              
              ) ,
                insets: EdgeInsets.symmetric(horizontal: 20),
              ),
              labelStyle: TextStyle(fontSize: 18,fontWeight:  FontWeight.w500),
              labelPadding: EdgeInsets.symmetric(horizontal: 20),
  tabs: [
    Tab(text: "Black coffee"),
    Tab(text: "esspresso"),
    Tab(text: "Cold Coffee"),
    Tab(text: "Latte" ),
  ],
),
SizedBox(height: 10),
 Center(
  child: [
    ItemsWidget(),
      ItemsWidget(),
     ItemsWidget(),
   ItemsWidget(),

  ] [_tabController.index],
    
   
 ),


          ],
        ),
      ),
    ),
    bottomNavigationBar: HomeBottomBar() ,
  );
}
}