import 'package:flutter/material.dart';
import 'package:my_portfolio/cnstants/colors.dart';

import '../cnstants/nav_items.dart';
import '../widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: CustomColor.scaffoldBg,
      endDrawer: Drawer(
        backgroundColor: CustomColor.scaffoldBg,
        child: ListView(
          children: [
            for (int i = 0; i < navTitles.length; i++)
              ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                titleTextStyle: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: CustomColor.whitePrimary,
                ),
                leading: Icon(navIcon[i]),
                title: Text(navTitles[i]),
                onTap: () {},
              ),
          ],
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          // MAIN
          // const HeaderDesktop(),
          HeaderMobile(
            onLogoTap: () {},
            onMenuTap: () {
              scaffoldKey.currentState!.openEndDrawer();
            },
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
      ),
    );
  }
}
