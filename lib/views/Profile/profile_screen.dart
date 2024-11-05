import 'package:flutter/material.dart';
import 'package:food/colors.dart';
import 'package:food/views/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../cart_screen.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({super.key});
  @override
  State<AccountScreen> createState() => _AccountScreenState();
}

class _AccountScreenState extends State<AccountScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(left: width * 0.05, top: height * 0.05),
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Container(
                height: 90,
                width: 70,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: LightBrown),
              ),
              SizedBox(
                width: width * 0.05,
                height: height * 0.03,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            " Alishba Khan",
                            style: TextStyle(
                              fontSize: 19,
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(
                            Icons.edit_outlined,
                            color: Brown,
                          )
                        ],
                      ),
                      Text(
                        " alishbakhan579@gmail.com",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ]),
              )
            ]),
          ),
          Column(
            children: [
              const Divider(),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(left: 22)),
                  const Icon(Icons.shopping_bag_outlined),
                  // SizedBox(width: 5),
                  //Padding(padding: EdgeInsets.only(left: 24)),
                  const Text(
                    "Orders",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: width * 0.45),
                  Icon(Icons.chevron_right)
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Divider(),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(left: 2)),
                  const Icon(Iconsax.personalcard),
                  //  Padding(padding: EdgeInsets.only(left: 0.01)),
                  // SizedBox(),
                  const Text(
                    "My Details",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: width * 0.25),
                  const Icon(Icons.chevron_right)
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Divider(),
              SizedBox(height: height * 0.015),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(left: 2)),
                  const Icon(Icons.notifications_none),

                  //  Padding(padding: EdgeInsets.only(left: 0.1)),

                  const Text(
                    "Notifications",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: width * 0.25),
                  const Icon(Icons.chevron_right)
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Divider(),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(left: 3.4)),
                  const Icon(Icons.help_outline_outlined),
                  //  Padding(padding: EdgeInsets.only(left: 24)),
                  const Text(
                    "Help",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: width * 0.45),
                  const Icon(Icons.chevron_right)
                ],
              ),
            ],
          ),
          Column(
            children: [
              const Divider(),
              SizedBox(height: height * 0.02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(padding: EdgeInsets.only(left: 2)),
                  const Icon(Iconsax.warning_2),
                  // Padding(padding: EdgeInsets.only(left: 24)),
                  const Text(
                    "About",
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(width: width * 0.45),
                  const Icon(Icons.chevron_right)
                ],
              ),
              const Divider(),
            ],
          ),
        ]),
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
