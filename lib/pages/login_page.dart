import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shue_hub/pages/registration_page.dart';

import '../my_widgets.dart';
import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.yellow,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text ('SHOE HUB'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Image.asset('assets/shoe hub.png'),
            myLabel("Email"),
            myTextField(
              controller: emailController
            ),
            myLabel("Password"),
            myTextField(
              controller: passwordController
            ),

            ElevatedButton(onPressed:(){
              log(emailController.toString());
              log(passwordController.toString());
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Dashboard()));
            },
                child: const Text("Log In")),

            TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const RegistrationPage()));
            },
                child: const Text('Have no account? Sign Up'))
          ],
        ),
      ),
    );
  }
}
