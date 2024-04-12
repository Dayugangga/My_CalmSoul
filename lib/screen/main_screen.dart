// ignore_for_file: library_private_types_in_public_api, use_super_parameters

import 'package:flutter/material.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({ Key? key }) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Test'),
    );
  }
}