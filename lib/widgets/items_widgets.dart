import 'package:flutter/material.dart';
import 'package:food/Models/Details_screen.dart';
import 'package:food/colors.dart';
import 'package:get/get.dart';

class ItemsWidgets extends StatelessWidget {
  List img = [
    'Latte',
    'Expresso',
    'Black Coffee',
    'Cold Coffee',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (150 / 175),
      children: [
        for (int i = 0; i < img.length; i++)
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: EdgeInsets.symmetric(horizontal: 13, vertical: 8),
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
            child: Column(
              children: [
                InkWell(
                  onTap: () {
                    Get.to(DetailsScreen());
                  },
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Image.asset(
                      "assets/images/${img[i]}.jpeg",
                      width: 120,
                      height: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              img[i],
                              style: TextStyle(
                                fontSize: 18,
                                color: Brown,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(
                              Icons.favorite_border,
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
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "\$20",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Brown),
                      ),
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
                )
              ],
            ),
          ),
      ],
    );
  }
}
