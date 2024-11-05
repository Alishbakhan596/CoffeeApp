import 'package:flutter/material.dart';
import 'package:food/colors.dart';
import 'package:food/views/Profile/profile_screen.dart';
import 'package:food/views/home/home_screen.dart';
import 'package:food/views/order/orderPlace.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _selectedIndex = 0;
  int count = 1;
  int counts = 1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    double pricePerUnit = 20; // Price per unit
    double totalPrice = pricePerUnit * count; // Calculate total price
    double pricePerUnits = 25; // Price per unit
    double totalPrices = pricePerUnits * counts; // Calculate total price

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Get.to(HomeScreen());
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(width: width * 0.34),
                  Center(
                    child: Text(
                      "My Cart",
                      style: GoogleFonts.aDLaMDisplay(
                          textStyle:
                              TextStyle(fontSize: 20, color: Colors.black54)),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    height: 150,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Grey.withOpacity(0.1),
                        boxShadow: [
                          BoxShadow(
                            color: White.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                          )
                        ]),
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/Latte.jpeg",
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Cappuccino",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Brown,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.44,
                              ),
                              Icon(
                                Icons.delete_forever,
                                color: Brown,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "With Oat Milk",
                            style: TextStyle(
                              fontSize: 16,
                              color: LightBrown,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "\$${totalPrice.toStringAsFixed(1)}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Brown),
                              ),
                              SizedBox(
                                width: width * 0.33,
                              ),
                              Container(
                                width: 120,
                                height: 38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Brown)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (count > 1) {
                                            count--;
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 15),
                                        child:
                                            Icon(Icons.minimize, color: Brown),
                                      ),
                                    ),
                                    Text(
                                      "$count",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          count++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Brown,
                                        size: 19,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 150,
                    width: width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Grey.withOpacity(0.1),
                        boxShadow: [
                          BoxShadow(
                            color: White.withOpacity(0.4),
                            spreadRadius: 1,
                            blurRadius: 2,
                          )
                        ]),
                    child: Row(children: [
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Image.asset(
                          "assets/images/Frappuccino.jpeg",
                          width: 120,
                          height: 120,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Frappuccino",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Brown,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: width * 0.44,
                              ),
                              Icon(
                                Icons.delete_forever,
                                color: Brown,
                              )
                            ],
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Cold Coffee",
                            style: TextStyle(
                              fontSize: 16,
                              color: LightBrown,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                "\$${totalPrices.toStringAsFixed(1)}",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Brown),
                              ),
                              SizedBox(
                                width: width * 0.33,
                              ),
                              Container(
                                width: 120,
                                height: 38,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: Brown)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          if (counts > 1) {
                                            counts--;
                                          }
                                        });
                                      },
                                      child: Container(
                                        margin:
                                            const EdgeInsets.only(bottom: 15),
                                        child:
                                            Icon(Icons.minimize, color: Brown),
                                      ),
                                    ),
                                    Text(
                                      "$counts",
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          counts++;
                                        });
                                      },
                                      child: Icon(
                                        Icons.add,
                                        color: Brown,
                                        size: 19,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ]),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.18,
              ),
              Container(
                height: 60,
                width: 240,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(193, 121, 85, 72)),
                child: ElevatedButton(
                    onPressed: () {
                      Get.to(OrderPlace());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.transparent,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                    child: Text(
                      "Order Now",
                      style: TextStyle(fontSize: 25, color: White),
                    )),
              )
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
        ));
  }
}
