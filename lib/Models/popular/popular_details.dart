import 'package:flutter/material.dart';
import 'package:food/cart_screen.dart';
import 'package:food/colors.dart';
import 'package:get/get.dart';

class PopularDetails extends StatefulWidget {
  State<PopularDetails> createState() => _PopularDetailsState();
}

class _PopularDetailsState extends State<PopularDetails> {
  bool isFavorite = false;
  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  int count = 1;
  @override
  Widget build(BuildContext context) {
    double pricePerUnit = 25; // Price per unit
    double totalPrice = pricePerUnit * count; // Calculate total price

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Brown,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(40))),
              padding: EdgeInsets.all(18),
              height: height * 0.4,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: White,
                    ),
                  ),
                  Center(
                      child: Container(
                    child: Image.asset(
                      "assets/images/Cold Coffee.jpeg",
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Frappuccino",
                  style: TextStyle(
                    fontSize: 25,
                    color: Brown,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: _toggleFavorite,
                  child: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                    color: isFavorite ? Brown : Brown,
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, Nunc vulputate libero et velit interdum, ac aliquet odio mattis.Class aptent taciti sociosqu ad litora torquent per coubia nostra, per inceptos himenaeos. ",
              style: TextStyle(fontSize: 17, color: Grey),
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: amber,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: amber,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: amber,
                  size: 25,
                ),
                Icon(
                  Icons.star,
                  color: amber,
                  size: 25,
                ),
                Icon(
                  Icons.star_half,
                  color: amber,
                  size: 25,
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$${totalPrice.toStringAsFixed(2)}',
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold, color: Brown),
                ),
                Container(
                  width: 120,
                  height: 38,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Brown)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          margin: const EdgeInsets.only(bottom: 15),
                          child: Icon(Icons.minimize, color: Brown),
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
            SizedBox(
              height: height * 0.1,
            ),
            Center(
              child: Container(
                height: 45,
                width: 254,
                decoration: BoxDecoration(
                  color: Brown,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(const CartScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  child: Center(
                    child: Text(
                      "Order Now",
                      style: TextStyle(color: White, fontSize: 20),
                    ),
                  ),
                ),
              ),
            )
          ]),
    ));
  }
}
