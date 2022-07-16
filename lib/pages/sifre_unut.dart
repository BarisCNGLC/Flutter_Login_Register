// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widget/social_login_button.dart';
import 'package:flutter_application_1/pages/social_textfield.dart';


class SifreUnut extends StatefulWidget {
  const SifreUnut({super.key});

  @override
  State<SifreUnut> createState() => _SifreUnutState();
}
 TextEditingController sifreUnutMail =TextEditingController();

class _SifreUnutState extends State<SifreUnut> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey.shade300,

      appBar: AppBar(
        
        shadowColor: Colors.white,
        bottomOpacity: 0,
         backgroundColor: Colors.transparent,
         title: Text(
                "",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24),
        
      ),
      leading: IconButton(
    onPressed: () {
      Navigator.pop(context);
    },
    icon: Icon(Icons.backspace_sharp,
                size: 30,),
    color: Colors.green
  ),
      elevation: 0.0,
      ),
      body:Column(
        children: [
          SizedBox(height: 30,),
          Center(
            child: Container(
                  width: MediaQuery.of(context).size.width/1.1,
                  height:MediaQuery.of(context).size.height/2,
                 
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      
                      Text("Forgot Your password  ? ", style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        
                      ),
                      ),
                     SizedBox(height: 10,),
                     Text("Enter your e-mail address to reset the password", style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        
                      ),),
                    SizedBox(height: 20,),
                    SocialTextfield(
                    controller:sifreUnutMail ,
                    inputText: "Email",
                    altyazi: "Enter your e-mail address abc@gmail.com",),
                    SizedBox(height: 50,),
                     SocialLoginButton(
                    buttonText: "Reset password",
                    textColor: Colors.black,
                    butonColor: Colors.green,
                    butonIcon: Icon(Icons.refresh),
                    onPressed: (){}
                    ),
                    
                    ],
                  ),
                ),
          ),
        
        ],
          ),
      
      
      
  
  
    );
  }
}