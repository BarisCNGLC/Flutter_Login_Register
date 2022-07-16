// ignore_for_file: prefer_const_constructors, avoid_print, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/kayit_page.dart';

import 'package:flutter_application_1/widget/kayit_login_button.dart';
import 'package:flutter_application_1/pages/sifre_unut.dart';
import 'package:flutter_application_1/widget/social_login_button.dart';
import 'package:flutter_application_1/pages/social_textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController mail= TextEditingController();
  TextEditingController password= TextEditingController();
  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        color: Colors.grey.shade400,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text("Text text text text",
                style: TextStyle(fontSize: 24),
                textAlign: TextAlign.center,),
            SizedBox(height: height*0.06,),
            SocialTextfield(
              inputText: "mail",
              altyazi: "Enter your e-mail address abc@gmail.com",
              controller: mail),
            SocialTextfield(
              inputText: "password",
              altyazi: "Enter your password ",
              controller: mail),
            SizedBox(height: height*0.001,),
            Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SifreUnut()));
                      },
                      child: const Text('   Forgot Your password  ? ',style: TextStyle(
                        fontSize: 15,
                        color: Colors.black
                      ),),
                      style: TextButton.styleFrom(
                      primary: Colors.amber, 
                      // Text Color
                    ),
                    ),
            ),
            SizedBox(height: height*0.02,),

            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                KayitLoginButton(buttonText: "Register", onPressed: (){
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KayitPage()));
                },butonColor: Colors.amber.shade700,),
                KayitLoginButton(buttonText: "Login", onPressed: (){},butonColor: Colors.green.shade700,)
              ],
            ),
            SizedBox(height: height*0.02,),

            SocialLoginButton(
              buttonText: "Sign in with Gmail",
              butonIcon:Image.asset('images/google-logo.png'),
              butonColor: Colors.white,
              textColor: Colors.black,
              onPressed: (){}
            ),
            SocialLoginButton(
              buttonText: "Sing in with Facebook",
              butonIcon:Image.asset('images/facebook-logo.png'),
              butonColor:Colors.blue ,
              textColor: Colors.black,

              onPressed: (){}
            ),
            SocialLoginButton(
              buttonText: "Sign in with Mail",
              butonIcon:Image.asset('images/mail-logo.png'),
              butonColor: Colors.green.shade400,
              textColor: Colors.black,
              onPressed: (){}
            )
          ],
        ),
      ),

    );
  }
}