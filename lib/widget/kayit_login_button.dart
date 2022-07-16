// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors
import 'package:flutter/material.dart';

class KayitLoginButton extends StatelessWidget {
  final String buttonText;
  final Color butonColor;
  final Color textColor;
  final double radius;
  final double yukseklik;
  final VoidCallback onPressed;
  const KayitLoginButton({
    Key? key,
    required this.buttonText,
    this.butonColor=Colors.green,
    this.textColor=Colors.white,
    this.radius=16,
    this.yukseklik=60,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      width: MediaQuery.of(context).size.width/3,
      child: SizedBox(
        height: yukseklik,
        child: TextButton(
                                  
                  onPressed: onPressed,
                  style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 20),
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      
                      Text(
                        buttonText,
                        style: TextStyle(color: textColor),
                      ),
                    
                    ],
                    
                  )),
      ),
    );
  }
}
