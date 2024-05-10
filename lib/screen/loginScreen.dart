import 'package:carpoolapp/screen/bookinScreen.dart';
import 'package:flutter/material.dart';
import 'package:carpoolapp/screen/style.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)),
              color: Colors.blue,
            ),
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  child: Image.asset(
                    'images/img.png',
                    height: 150,
                  ),
                ),
                const Text(
                  "CarPoolin",
                  style: txt3,
                ),
                const Text(
                  "Join today to unlock",
                  style: txt3,
                ),
                const Text(
                  "100+ travels everyday!",
                  style: txt3,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Surname",
                      hintStyle: const TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(40))),
                ),
                const SizedBox(height: 20),
                Container(
                    decoration: BoxDecoration(
                        color: const Color(0xff4682B4),
                        borderRadius: BorderRadius.circular(40)),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BookingScreen(),
                            ));
                      },
                      child: const Center(
                          child: Text(
                        "Start",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.w500),
                      )),
                    ))
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
