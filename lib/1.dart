import 'package:flutter/material.dart';

void main() {

  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: openDoors(),
    ),
  );
}

class openDoors extends StatefulWidget {
  const openDoors({super.key});

  @override
  State<openDoors> createState() => _openDoorsState();
}

class _openDoorsState extends State<openDoors> {
  double i = 50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Open - Close Doors",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black87,
        centerTitle: true,
      ),
      body: Align(
        child: InkWell(
          onTap: () {
            setState(() {
              if(i>=60){
                i-=20;
              }
            });
          },
          onDoubleTap: () {
            setState(() {
              if(i<=80){
                i+=20;
              }
            });
          },
          child: Container(
            height: 380,
            width: 230,
            decoration:  BoxDecoration(
              color: Colors.black,
              border: Border.symmetric(
                vertical: BorderSide(
                  color: Colors.grey,
                  width: i,
                ),
                horizontal: const BorderSide(
                  color: Colors.black,
                  width: 40,
                ),
              ),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}

