import 'package:flutter/material.dart';
import 'package:food/cart_screen.dart';
import 'package:food/colors.dart';
import 'package:food/views/Profile/profile_screen.dart';
import 'package:food/widgets/items_widgets.dart';
import 'package:food/widgets/popular_items.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  int _selectedIndex = 0;

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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: White.withOpacity(0.23),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Brown,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40))),
              padding: EdgeInsets.all(18),
              height: height * 0.35,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.menu,
                          color: White,
                        ),
                        Icon(
                          Icons.coffee,
                          color: White,
                          size: 29,
                        ),
                        Icon(
                          Icons.notifications,
                          color: White,
                          size: 29,
                        )
                      ]),
                  SizedBox(height: 20),
                  Text(
                    "Coffee Shop",
                    style: GoogleFonts.lobster(
                        textStyle: TextStyle(fontSize: 30, color: White)),
                  ),
                  SizedBox(height: 15),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'Search Store',
                      hintStyle: TextStyle(color: Colors.white),
                      filled: true,
                      fillColor: Colors.grey.withOpacity(0.2),
                      suffixIcon: Icon(Icons.search, size: 28, color: White),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(16),
                          borderSide: BorderSide(
                            color: Colors.grey.withOpacity(0.2),
                          )),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(16),
                        borderSide: BorderSide(
                          color: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TabBar(
                controller: _tabController,
                labelColor: Brown,
                unselectedLabelColor: LightBrown,
                isScrollable: true,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: Brown),
                  insets: EdgeInsets.symmetric(horizontal: 16),
                ),
                labelStyle: GoogleFonts.aDLaMDisplay(
                  fontSize: 17,
                ),
                tabs: [
                  Tab(text: "Hot Coffee"),
                  Tab(text: "Cold Coffee"),
                  Tab(text: "Black Coffee"),
                ]),
            SizedBox(height: 10),
            Center(
              child: [
                ItemsWidgets(),
                ItemsWidgets(),
              ][_tabController.index],
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Popular Products",
                style: GoogleFonts.lobster(
                    textStyle: TextStyle(fontSize: 30, color: Brown)),
              ),
            ),
            SizedBox(height: 5),
            PopularItems(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.to(HomeScreen());
              },
              icon: Icon(Icons.home),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.to(CartScreen());
              },
              icon: Icon(Icons.shopping_cart),
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              onPressed: () {
                Get.to(AccountScreen());
              },
              icon: Icon(Icons.person),
            ),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: LightBrown,
        onTap: _onItemTapped,
      ),
    );
  }
}
