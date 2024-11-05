import 'package:flutter/material.dart';
import 'package:food/colors.dart';
import 'package:food/views/home/home_screen.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeScreen extends StatefulWidget {
  const CoffeeScreen({super.key});

  @override
  State<CoffeeScreen> createState() => _CoffeeScreenState();
}

class _CoffeeScreenState extends State<CoffeeScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: White,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset("assets/images/coffeelogo.jpg"),
            ),
            Container(
              decoration: BoxDecoration(
                color: Brown,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                ),
              ),
              padding: EdgeInsets.all(18),
              height: height * 0.6,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Coffee so Good,",
                    style: GoogleFonts.lobster(
                        textStyle: TextStyle(fontSize: 30, color: White)),
                  ),
                  Text(
                    "your taste buds will",
                    style: GoogleFonts.lobster(
                        textStyle: TextStyle(fontSize: 30, color: White)),
                  ),
                  Text(
                    "love it",
                    style: GoogleFonts.lobster(
                        textStyle: TextStyle(fontSize: 30, color: White)),
                  ),
                  Text(
                    "Loreum ipsum dolor sit amet,consectetur",
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            fontSize: 16, color: White.withOpacity(0.5))),
                  ),
                  Text(
                    "adipiscing elit",
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            fontSize: 16, color: White.withOpacity(0.5))),
                  ),
                  SizedBox(height: 24),
                  SizedBox(
                    height: 60,
                    width: 240,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                        onPressed: () {
                          Get.to(HomeScreen());
                        },
                        child: Text(
                          "Get Started",
                          style: TextStyle(fontSize: 25, color: Brown),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
