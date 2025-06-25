import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: const Center(
              child: Text(
                'SL 250 ML',
                style: TextStyle(
                  fontSize: 30,
                  color: Color(0xff404040),
                  fontWeight: FontWeight.bold,
                ),
              ),
            )),
        body: Column(
          children: [
            Center(
                child: Container(
              //  margin: EdgeInsets.all(30),
              height: 300, width: 250,
              decoration: BoxDecoration(
                  // shape: BoxShape.rectangle,
                  color: Colors.white,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("assets/Image/Car.jpg"))),
            )),
            Container(
              // padding:EdgeInsets.only(top: 10),
              child: Text(
                "01 : 47 :12",
                style: TextStyle(
                    color: Color(0xff404040),
                    fontSize: 50,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(
            //  mainAxisAlignment: MainAxisAlignment.start,
            //  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 18,top: 18,bottom: 18),
                  height: 125,
                  width: 240,
                  decoration: BoxDecoration(
                      color: Color(0xffb3e1bb),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Color(0xff8cab91), width: 2)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(padding:EdgeInsets.only(left: 30),
                      child: Text("Zone",
                      style: TextStyle(
                      fontSize: 18,
                        color: Color(0xff404741)
                     ),
                     ),
                      ),
                      Padding(padding:EdgeInsets.only(left: 30),
                      child: Text("B1 246",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff404741),
                        ),

                      ),
                      ),
                    ],
                  ),
                ),
                Container(

                    margin: EdgeInsets.all(15),
                    height: 125,
                    width: 120,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        border: Border.all(color: Color(0xffebebeb), width: 3)),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Price",
                       style: TextStyle(
                         fontSize: 15,
                         color: Color(0xff404741)
                       ) ,
                        ),

                        Text("\$30",
                        style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                            color: Color(0xff404741)
                        ),
                        ),

                        
                      ],
                    ),
                  ),


    ),
    
              ],
            ),
            Container(
                 height: 120,  width: 380,
              decoration: BoxDecoration(
                color: Color(0xfffccb6e),
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Color(0xffc3ab72),width: 2)

              ),
            ),
            Padding(padding:
            EdgeInsets.only(top: 30),
           child: SizedBox(
              height: 70,
              width: 380,
              child: ElevatedButton(onPressed:  (){},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff454545),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                  child: Text("End Parking",
                 style: TextStyle(
                   color: Color(0xffdddddd),
                   fontSize: 22
                 ),
                  )
              ),
    ),
            )
          ],
        ));
  }
}
