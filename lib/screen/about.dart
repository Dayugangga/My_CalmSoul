import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'About Us Page',
              style: TextStyle(fontSize: 24.0),
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to our app!',
              style: TextStyle(fontSize: 18.0),
            ),
            
          ],
        ),
      ),
    );
  }
}
