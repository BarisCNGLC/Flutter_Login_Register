// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SocialTextfield extends StatelessWidget {

  final String inputText;
  final String altyazi;
  final TextEditingController controller;
  final bool yaziGor;


  const SocialTextfield(
    {
      super.key,
      required this.inputText, 
      required this.altyazi, 
      required this.controller,
      this.yaziGor=false,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: TextField(
        obscureText: yaziGor,
        controller: controller,
                  decoration: InputDecoration(
                   
              
            
                    filled: true,
                    fillColor: Colors.white,
                    
                      border: OutlineInputBorder(
                        
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        borderSide:BorderSide(
                          
                          color: Colors.red,
                          
                        )
                      ),
                       focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.green,width: 3),
                        borderRadius: BorderRadius.circular(25.7),
                      ),
                      hintText: altyazi),
                
                
                ),
    );
  }
}