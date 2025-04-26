import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widget Playground'),
          backgroundColor: Colors.blue,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/flutterlogo.png"),
              
              const SizedBox(height: 20), 
              
              const Text(
                'Welcome to Flutter!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              
              const SizedBox(height: 20), 
              
              ElevatedButton(
                onPressed: () {
                  print('Button pressed!');
                },
                child: const Text('Click Me'),
              ),
              
              const SizedBox(height: 20), 
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const [
                  Icon(Icons.favorite, color: Colors.red),
                  Icon(Icons.star, color: Colors.yellow),
                  Icon(Icons.thumb_up, color: Colors.green),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}