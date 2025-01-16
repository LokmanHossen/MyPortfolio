import 'package:flutter/material.dart';
import 'package:my_portfolio/cnstants/colors.dart';

import '../widgets/header_mobile.dart';

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
            // const HeaderDesktop(),
            HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {},
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
