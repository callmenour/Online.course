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
        leading: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SizedBox(
            width: 40,
            height: 40,
            child: DecoratedBox(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Color(0xffcecfca),
                  width: 1.5,
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 22,
                ),
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: SizedBox(
              width: 44,
              height: 44,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Color(0xffcecfca),
                    width: 1.5,
                  ),
                ),
                child: Center(
                  child: Icon(
                    Icons.more_vert,
                    size: 20,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 60),
            child: Image.asset(
              "assets/Image/Labubu.png",
              fit: BoxFit.none,
            ),
          ),
          SizedBox(height: 20), // Add some space between image and palette
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _Color(Color(0xffb28867)),
              SizedBox(width: 10), // Changed to width for horizontal spacing
              _Color(Color(0xffd1c5ae)),
              SizedBox(width: 10),
              _Color(Color(0xff1c0c04)),
              SizedBox(width: 10),
              _Color(Color(0xff7a4c28)),
            ],
          ),
          Container(
            child: Text("THE MONSTERS LABUBU",
              style: TextStyle(
            fontSize: 25, fontWeight: FontWeight.bold, fontStyle: FontStyle.normal,
    )) ,
            margin: EdgeInsets.only(top: 25),
            ),
          Container(
            child: Text("BEST OF LUCK Vinyl Plush Doll",
                style: TextStyle(
                  fontSize: 15,  fontStyle: FontStyle.normal,
                )) ,
          ),
    Container(
      //height: 80,width: 18,
    margin: EdgeInsets.only(top: 20),
    child: ElevatedButton(
    style: ElevatedButton.styleFrom(
    backgroundColor: Color(0xFFFF6B00),
    padding: EdgeInsets.symmetric(horizontal: 80, vertical: 18),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30),
    ),
    elevation: 20,
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
    ),
  ]
    )
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