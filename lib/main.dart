import 'package:flutter/material.dart';
import 'splashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Tasbeeh Counter",
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const SplashScreen(),
    );
  }
}

class TashbeehApp extends StatefulWidget {
  const TashbeehApp({super.key});

  @override
  State<TashbeehApp> createState() => _TashbeehAppState();
}

class _TashbeehAppState extends State<TashbeehApp> {
  int counter = 0;

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void resetCounter() {
    setState(() {
      counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFF21B3),
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: Icon(
          Icons.mosque,
          color: Color(0xffFBF4F8),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: Icon(
              Icons.mosque,
              color: Color(0xffFBF4F8),
            ),
          ),
        ],
        title: Text(
          "Tasbeeh App",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Color(0xffFBF4F8)),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Zikhr done this many times",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xffFBF4F8),
              )),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "$counter",
              style: TextStyle(
                color: Color(0xffFBF4F8),
                fontSize: 55,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton.extended(
                onPressed: incrementCounter,
                label: Text(
                  "Add 1",
                ),
                icon: Icon(Icons.add),
                tooltip: "Increment",
              ),

              FloatingActionButton.extended(
                onPressed: resetCounter,
                label: Text("Reset"),
                icon: Icon(Icons.clear),
                tooltip: "Reset",
              ),
              // ElevatedButton(onPressed: resetCounter, child: Text("Reset"))
            ],
          ),
        ],
      ),
    );
  }
}
