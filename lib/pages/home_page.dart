import 'package:flutter/material.dart';
import 'package:my_portfolio/cnstants/colors.dart';
import 'package:my_portfolio/cnstants/nav_items.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // MAIN
            Container(
              height: 60.0,
              margin: const EdgeInsets.symmetric(
                vertical: 10.0,
                horizontal: 20.0,
              ),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Colors.transparent,
                      CustomColor.bgLight1,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(100)),
              child: Row(
                children: [
                  const Text(
                    'LK',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline,
                      color: CustomColor.yellowSecondary,
                    ),
                  ),
                  const Spacer(),
                  for (int i = 0; i < navTitles.length; i++)
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          navTitles[i],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: CustomColor.whitePrimary,
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            //SKill
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.amber,
            ),

            //Projec
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.black,
            ),

            //contact
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.blue,
            ),

            //Footer
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.green,
            )
          ],
        ));
  }
}
