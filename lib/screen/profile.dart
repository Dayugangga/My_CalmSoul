import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 20),
          const CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage('assets/images/badha.jpg'),
          ),
          const SizedBox(height: 20),
          itemProfile('Nama', 'Dayu Ganga', CupertinoIcons.person),
          const SizedBox(height: 20),
          itemProfile('Alamat', 'Tabanan', CupertinoIcons.number),
          const SizedBox(height: 20),
          itemProfile('No tlpn', '08222222222', CupertinoIcons.building_2_fill),
          const SizedBox(height: 20),
          itemProfile('Status', 'Pelajar', CupertinoIcons.book),
          const SizedBox(height: 40),
          GestureDetector(
            child: Container(
              width: double.infinity,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 120),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: const Color.fromARGB(255, 133, 255, 114)),
              child: const Center(
                child: Text(
                  "Edit Profile",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  itemProfile(String title, String subtitle, IconData iconData) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
                offset: const Offset(0, 10),
                color: const Color.fromARGB(255, 137, 255, 98).withOpacity(.2),
                spreadRadius: 2,
                blurRadius: 5)
          ]),
      child: ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: Icon(iconData),
        tileColor: Colors.white,
      ),
    );
  }
}
