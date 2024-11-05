import 'package:flutter/material.dart';
import 'package:food/colors.dart';
import 'package:food/views/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class OrderPlace extends StatefulWidget {
  const OrderPlace({super.key});

  @override
  State<OrderPlace> createState() => _OrderPlaceState();
}

class _OrderPlaceState extends State<OrderPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 100),
            Center(
              child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Icon(Icons.check_circle_rounded,
                          size: 110, color: LightBrown),
                    ),
                    Text(
                      "Your Order has been \n          accepted",
                      style: TextStyle(
                          fontSize: 29,
                          color: Brown,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(height: 50),
                    Text(
                      "Your items has been placed and is on \n       it's way to being processed",
                      style: TextStyle(
                          fontSize: 17,
                          color: LightBrown,
                          fontWeight: FontWeight.w100),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 70),
            Container(
              height: 45,
              width: 254,
              decoration: BoxDecoration(
                color: Brown,
                borderRadius: BorderRadius.circular(10),
              ),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
                child: Center(
                  child: Text(
                    "Order Done",
                    style: TextStyle(color: White, fontSize: 20),
                  ),
                ),
              ),
            ),
            TextButton(
                onPressed: () {
                  Get.to(HomeScreen());
                },
                child: Text(
                  "Back To Home",
                  style: GoogleFonts.abyssinicaSil(
                      textStyle: TextStyle(color: Brown, fontSize: 18)),
                ))
          ],
        ),
      ),
    );
  }
}
