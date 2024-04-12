import 'package:flutter/material.dart';
import 'package:my_calmsoul/component/my_button.dart';
import 'package:my_calmsoul/component/my_teks.dart';
import 'package:my_calmsoul/screen/home_page.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool showPass = false;
  bool checkTheBox = false;

  void showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  void check() {
    setState(() {
      checkTheBox = !checkTheBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 173, 244, 200),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              Image.asset(
                "assets/images/logo.png",
                width: 200,
              ),
              const SizedBox(height: 35),
              const MyTextField(hintText: "Email"),
              const SizedBox(height: 20),
              MyTextField(
                hintText: "Password",
                onPressed: showPassword,
                obsecureText: !showPass,
                icon: showPass ? Icons.visibility_off : Icons.visibility,
              ),
              const SizedBox(height: 12),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          checkColor: Colors.white,
                          value: checkTheBox,
                          onChanged: (value) {
                            check();
                          },
                        ),
                        const Text(
                          "Remember Me",
                          style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                        )
                      ],
                    ),
                    const Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 150),
              MyButton(
                customColor: const Color.fromARGB(255, 244, 168, 46),
                text: "Sign In",
                onTap: () {
                  // Navigasi ke HomeScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't Have An Account?",
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(width: 20),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}