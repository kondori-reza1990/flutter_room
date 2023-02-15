import 'package:flutter/material.dart';
import 'package:flutter_room/screen/home_screen.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Center(
                  child: Lottie.asset("assets/images/signin.json",
                      height: screenSize.height * 0.3, fit: BoxFit.fitHeight)),
              const SizedBox(
                height: 15,
              ),
              Center(
                child: Text(
                  "به رستوران ما خوش آمدید.",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).primaryColor),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              TextField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: const InputDecoration(
                  label: Text("رایانامه"),
                  hintText: "لطفا یک رایانامه معتبر وارد کنید.",
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.email_rounded),
                ),
                //expands: true,
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                keyboardType: TextInputType.text,
                controller: passwordController,
                decoration: const InputDecoration(
                  label: Text("کلمه عبور"),
                  hintText: "لطفا کلمه عبور خود را وارد کنید.",
                  alignLabelWithHint: true,
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.vpn_key),
                ),
                //expands: true,
                obscureText: true,
              ),
              const SizedBox(
                height: 25,
              ),
              OutlinedButton(
                onPressed: () {
                  //emailController.text = "kondori.reza1990@gmail.com";
                  if (emailController.text.isEmpty) {
                    //خطای خالی بودن رایانامه
                    print("Empty Email");
                    return;
                  } else if (passwordController.text.isEmpty) {
                    //خطای خالی بودن کلمه عبور
                    print("Empty Password");
                    return;
                  } else if (emailController.text == "admin@gmail.com" &&
                      passwordController.text == "12345") {
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const HomeScreen()));
                  } else {
                    //خطای نامعتبر بودن
                    print("Invalid");
                    return;
                  }
                },
                style: OutlinedButton.styleFrom(
                  minimumSize: Size(screenSize.width - 60, 50),
                ),
                child: const Text(
                  "ورود به برنامه",
                  style: TextStyle(fontSize: 20),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
