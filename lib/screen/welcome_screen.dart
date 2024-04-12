import 'package:flutter/material.dart';
import 'package:my_calmsoul/component/my_button.dart';
import 'package:my_calmsoul/screen/login.dart';

class CreateAccScreen extends StatelessWidget {
  const CreateAccScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 244, 200),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 0,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: Image.asset("assets/images/logo.png"),
                ),
                const SizedBox(height: 3,),
               const Text("Welcome To", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                const SizedBox(height: 5,),
                const Text("Your Sanctuary Of Calm", textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                const SizedBox(height: 20,),
                MyButton(
                    customColor:
                        const Color.fromARGB(255, 244, 168, 46).withOpacity(0.7),
                    text: "Create Acoount",
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen()));
                    })
              ],
            ),
            const Spacer(),
            Container(
              margin: const EdgeInsets.only(bottom: 40),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Terms of use",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Privacy Policy",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}