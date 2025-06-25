import 'package:flutter/material.dart';
import 'User.dart'; // Make sure this file exists

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = true;
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffbfcf4),
      appBar: AppBar(
        backgroundColor: const Color(0xfffbfcf4),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: ListView(
          children: [
            const SizedBox(height: 8),
            const Text(
              'Let’s Get Started',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Color(0xff474747),
              ),
            ),
            const SizedBox(height: 6),
            const Text(
              'Fill the form to continue',
              style: TextStyle(
                fontSize: 15,
                color: Color(0xffcdcdcd),
              ),
            ),
            const SizedBox(height: 40),

            // Email Label
            const Text(
              "Your Email Address",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff767676),
              ),
            ),
            const SizedBox(height: 10),

            // Email Input
            const SizedBox(
              height: 60,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  hintText: "divyesh.b@gmail.com",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12),
                ),
              ),
            ),
            const SizedBox(height: 24),


            const Text(
              "Choose a Password",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Color(0xff767676),
              ),
            ),
            const SizedBox(height: 10),

            TextField(
              obscureText: !isPasswordVisible,
              decoration: InputDecoration(
                hintText: "Choose a password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 0),
                suffixIcon: IconButton(
                  icon: Icon(isPasswordVisible
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      isPasswordVisible = !isPasswordVisible;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 12),

            Row(
              children: [
                Checkbox(
                  value: isChecked,
                  onChanged: (bool? newValue) {
                    setState(() {
                      isChecked = newValue ?? false;
                    });
                  },
                ),
                const Expanded(
                  child: Text(
                    "I agree with terms of use",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xff767676),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8),

            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  "Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // OR Divider
            const Center(
              child: Text("OR", style: TextStyle(color: Colors.grey)),
            ),
            const SizedBox(height: 16),


            const SizedBox(height: 30),


            Center(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const user()),
                  );
                },
                child: const Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                            color: Color(0xffb3b3b3), fontSize: 15),
                      ),
                      TextSpan(
                        text: "Log in",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
