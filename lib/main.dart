import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Greeting App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Hello, World!',
                style: TextStyle(
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'Welcome to Flutter!',
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 148,
                width: 148,
                child: Image.network(
                    'https://iconape.com/wp-content/png_logo_vector/flutter-logo.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              Builder(builder: (context) {
                return ElevatedButton(
                  onPressed: () {
                    mySnackBar('Pressed Me!', context);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  child: const Text('Press Me'),
                );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
