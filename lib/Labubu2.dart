import 'dart:ffi';

import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import 'Colors.dart';

class Labubu2 extends StatefulWidget {
  const Labubu2({super.key});

  @override
  State<Labubu2> createState() => _Labubu2State();
}

class _Labubu2State extends State<Labubu2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f4ef),
      appBar: AppBar(
        backgroundColor: UIColors.bgMainColor,
        leading: Container(
          margin: const EdgeInsets.all(5),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.orange,
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/image/profile.jpg"),
            ),
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.all(5),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: UIColors.borderColor, width: 0.6),
            ),
            child: const Center(child: Icon(Icons.search_rounded, size: 35)),
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: RichText(
                  text: TextSpan(
                    text: 'BEST RECOMMENDED\nFOR',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 27,
                    ),
                    children: [
                      TextSpan(
                        text: ' YOU',
                        style: TextStyle(color: Colors.orange),
                      ),
                    ],
                  ),
                ),
              ),
              const Spacer(),
              Container(
                height: 40,
                width: 80,
                margin: const EdgeInsets.only(right: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: UIColors.borderColor, width: 0.6),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.filter_list),
                      SizedBox(width: 10),
                      Text("Filter"),
                    ],
                  ),
                ),
              ),
            ],
          ),

          // Container with fading background, border, and image
          Container(
            width: 180,
            height: 180,
            margin: const EdgeInsets.only(left: 15),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                // Background Image + Fading Effect
                ShaderMask(
                  shaderCallback: (Rect bounds) {
                    return LinearGradient(
                      colors: [Colors.black.withOpacity(0.7), Colors.black.withOpacity(0)],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                    ).createShader(bounds);
                  },
                  blendMode: BlendMode.dstIn,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(width: 1, color: Colors.black),
                      image: DecorationImage(
                        image: AssetImage("assets/Image/full_striped_background_wide.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                // Main Image (Extending outside the container)
                Positioned(
                  right: -25,
                  bottom: -30,
                  child: Container(
                    width: 180,
                    height: 270,
                    child: Image.asset(
                      "assets/Image/Labubu.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Text Content
                Container(
                  padding: EdgeInsets.only(left: 20, top: 15),
                  child: Text(
                    'THE MONSTERS\nLABUBU',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 80),
                  child: Text('DRESS BE LATTE Vinyl plush\nDoll'),
                ),

                // Buttons with spacing & border
                Positioned(
                  bottom: 10,
                 left: 15,
                //  right: 15,
                  child: Row(
                    children: [
                      // First button (Separated)
                      SizedBox(
                        width: 85,
                        height: 30,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            shadowColor: Colors.transparent,
                            elevation: 30,
                            side: BorderSide(color: Colors.black, width: 0.3),
                          ),
                          child: Text(
                            "\$ 84.99",
                            style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold, color: Colors.black),
                          ),
                        ),
                      ),

                      //Spacer(), // Space between first button and the grouped ones

                      // Grouped buttons near the image on the right
                      Row(
                        children: [
                          SizedBox(width: 8,),
                          SizedBox(
                            width: 100,
                            height: 45,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.deepOrange,
                                elevation: 50,
                                side: BorderSide(color: Colors.black, width: 0.3),
                              ),
                              child: Text(
                                "Single Box",
                                //maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.white),
                              ),
                            ),
                          ),
                          SizedBox(width: 8), // Minimal space between last two buttons
                          SizedBox(
                            width: 95,
                            height: 30,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.transparent,
                                shadowColor: Colors.transparent,
                                elevation: 50,
                                side: BorderSide(color: Colors.black, width: 0.5),
                              ),
                              child: Text(
                                "Whole Set",
                                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.black),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
