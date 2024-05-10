import 'package:carpoolapp/screen/loginScreen.dart';
import 'package:flutter/material.dart';
import 'package:carpoolapp/screen/style.dart';
import 'package:flutter/widgets.dart';

class welcomeScreen extends StatefulWidget {
  const welcomeScreen({super.key});

  @override
  State<welcomeScreen> createState() => _welcomeScreenState();
}

class _welcomeScreenState extends State<welcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: NetworkImage(
                          'https://us.123rf.com/450wm/adul69/adul692302/adul69230200015/198026851-sea-view-vector-illustration-with-coconut-trees-and-cars-as-backdrop.jpg?ver=6')),
                  Text(
                    "CarPoolin",
                    style: welcomeTxt,
                  ),
                  Text(
                    "Drive & Save Money",
                    style: welcomeTxt2,
                  ),
                ],
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    (MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    )));
              },
              icon: const Icon(Icons.arrow_circle_right_rounded),
              iconSize: 50,
              color: Colors.blue,
            )
          ],
        ),
      ),
    );
  }
}
