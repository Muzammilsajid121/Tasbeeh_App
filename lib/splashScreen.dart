import 'package:flutter/material.dart';
import 'package:tashbee_counter/main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  //creating a splash screen
  void initState() {
    Future.delayed(Duration(seconds: 2), switchToTashbeehApp);
    super.initState();
  }

  void switchToTashbeehApp() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => TashbeehApp()));
  }
  //splash screen procedure end

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF21B3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Tasbeeh App",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 55,
                  color: Color(0xffFBF4F8),
                )),
            Image.asset(
              "assets/beads1.png",
              height: 100,
            ),
            const SizedBox(height: 10),
            const Text("version 1.0.1",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black,
                )),
          ],
        ),
      ),
    );
  }
}
