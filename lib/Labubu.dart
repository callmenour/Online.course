import 'package:flutter/material.dart';

class Labubu extends StatefulWidget {
  const Labubu({super.key});

  @override
  State<Labubu> createState() => _LabubuState();
}

class _LabubuState extends State<Labubu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff3f4ef),
      appBar: AppBar(
        backgroundColor: Color(0xfff3f4ef),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Color(0xffcecfca), width: 1.5),
            ),
            child: Center(child: Icon(Icons.arrow_back_ios_new, size: 22)),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Color(0xffcecfca), width: 1.5),
              ),
              child: Center(child: Icon(Icons.more_vert, size: 20)),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          /// 1. Bottom Section with border
          Positioned(
            top: 350,
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              padding: EdgeInsets.only(top: 100, left: 20, right: 20, bottom: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                border: Border.all(color: Color(0xffcecfca), width: 1),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _Color(Color(0xffb28867)),
                      SizedBox(width: 10),
                      _Color(Color(0xffd1c5ae)),
                      SizedBox(width: 10),
                      _Color(Color(0xff1c0c04)),
                      SizedBox(width: 10),
                      _Color(Color(0xff7a4c28)),
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    "THE MONSTERS LABUBU",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "BEST OF LUCK Vinyl Plush Doll",
                    style: TextStyle(fontSize: 15),
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFFFF6B00),
                      padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      elevation: 10,
                    ),
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          /// 2. Overlapping Labubu Image
          Positioned(
            bottom: 230,
            child: Image.asset(
              "assets/Image/Labubu.png",
              width: 450,
              height: 480,
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }
}

Widget _Color(Color color) {
  return Container(
    width: 18,
    height: 18,
    decoration: BoxDecoration(
      color: color,
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white, width: 1.5),
    ),
  );
}
