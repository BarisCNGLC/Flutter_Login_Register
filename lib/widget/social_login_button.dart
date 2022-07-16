// ignore_for_file: prefer_const_constructors, prefer_if_null_operators, unnecessary_null_comparison

import 'package:flutter/material.dart';

class SocialLoginButton extends StatelessWidget {
  
  final String buttonText;
  final Color butonColor;
  final Color textColor;
  final double radius;
  final double yukseklik;
  final Widget butonIcon;
  final VoidCallback onPressed;

  const SocialLoginButton({
    super.key, 
    required this.buttonText,
    this.butonColor = Colors.green,
    this.textColor=Colors.white,
    this.radius  = 16,
    this.yukseklik =60,
    required this.butonIcon,
    required this.onPressed});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12),
      child: SizedBox(
        height: yukseklik,
        child: TextButton(
                  onPressed: onPressed,
                  style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 19),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(radius),
                    )
                  ),
                  shadowColor: Colors.red,
                  backgroundColor: butonColor,
                ),
                  child: Row(
                    mainAxisSize:MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      
                      butonIcon != null ? butonIcon :Container(),
                      Text(
                        buttonText,
                        style: TextStyle(color: textColor),
                      ),
                      Opacity(
                        opacity: 0,
                        child: butonIcon,
                      ),
                    ],
                    
                  )),
      ),
    );
  }
}