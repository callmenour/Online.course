import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class user extends StatefulWidget {
  const user({super.key});

  @override
  State<user> createState() => _userState();
}

class _userState extends State<user> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbfcf4),
      appBar: AppBar(
        backgroundColor: const Color(0xfffbfcf4),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Forgot Password ???',
              style: TextStyle(
                color: Color(0xff767676),
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Container(
          //width: 500,
          //   child: Image.asset(
          //     "assets/Image/Adobe Express - file.png",
          //     fit: BoxFit.contain,
          //   ),
          //  ),

          Container(
            margin: const EdgeInsets.only(right: 280),
            child: const Text(
              "Email Address",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            width: 380,
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0xff767676), width: 2),
                ),
                hintText: "divyesh.b@gmail.com",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
          ),

          Container(
            margin: const EdgeInsets.only(right: 300, top: 20),
            child: const Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 10),
          const SizedBox(
            width: 380,
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: Color(0xff767676), width: 2),
                ),
                hintText: "Enter Password",
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              ),
            ),
          ),

          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: const Text(
                  "Remember me next time",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Checkbox(
                value: isChecked,
                onChanged: (bool? newValue) {
                  setState(() {
                    isChecked = newValue!;
                  });
                },
              ),
            ],
          ),

          // Login Button
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black,
              padding:
                  const EdgeInsets.symmetric(horizontal: 170, vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: const Text(
              "Log In",
              style: TextStyle(color: Colors.white),
            ),
          ),

          const SizedBox(height: 40),

          Align(
            alignment: Alignment.center,
            child: RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: TextStyle(color: Color(0xffb3b3b3), fontSize: 16),
                  ),
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
