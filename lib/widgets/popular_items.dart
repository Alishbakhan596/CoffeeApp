import 'package:flutter/material.dart';
import 'package:food/Models/popular/popular_details.dart';
import 'package:get/get.dart';

import '../colors.dart';

class PopularItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: width,
          height: 170,
          child: Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 230,
              width: width,
              decoration: BoxDecoration(
                  color: Grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(PopularDetails());
                              },
                              child: Container(
                                height: 180,
                                width: 160,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/Frappuccino.jpeg"),
                                        fit: BoxFit.contain),
                                    color: Grey.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(20)),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Mocha Cookie Crumble\nFrappuccino* Blended Beverage",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Brown,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Frappuccino*Roast coffee,mocha sa....",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: LightBrown,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "\$25",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Brown),
                                    ),
                                    SizedBox(width: 240),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Brown,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 20,
                                        color: White,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: width,
          height: 170,
          child: Expanded(
            child: Container(
              margin: EdgeInsets.only(bottom: 20),
              height: 230,
              width: width,
              decoration: BoxDecoration(
                  color: Grey.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Stack(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 15, top: 15),
                    child: Stack(
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 180,
                              width: 160,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/Cold Brewed Coffee.jpeg"),
                                      fit: BoxFit.contain),
                                  color: Grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(20)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Choclate Almondmilk Cold\nBrew",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Brown,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  "Starbuck*Cold Sightly sweeten..",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: LightBrown,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Text(
                                      "\$25",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                          color: Brown),
                                    ),
                                    SizedBox(width: 240),
                                    Container(
                                      padding: EdgeInsets.all(5),
                                      decoration: BoxDecoration(
                                        color: Brown,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        size: 20,
                                        color: White,
                                      ),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
