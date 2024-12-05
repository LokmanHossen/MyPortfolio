import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      scrollDirection: Axis.vertical,
      children: [
        // MAIN
        Container(
          height: 500,
          width: double.infinity,
          color: Colors.blue,
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
