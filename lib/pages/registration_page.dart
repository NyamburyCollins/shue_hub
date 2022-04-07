//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../my_widgets.dart';
class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: const Text('Register Here'),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        myLabel("First Name"),
        myTextField(
          controller: firstNameController
        ),
        myLabel("Last Name"),
        myTextField(
          controller: lastNameController
        ),
        myLabel("Phone Number"),
        myTextField(
          controller: phoneNumberController
        ),
        myLabel("Email"),
        myTextField(
          controller: emailController
        ),
        myLabel("Password"),
        myTextField(
          controller: passwordController
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed:(){
              Navigator.pop(context);
            },
                child: const Text('Sign Up')),
          ],
        )

      ],),
    );
  }
}
