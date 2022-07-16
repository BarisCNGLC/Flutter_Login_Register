// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_constructors_in_immutables, sort_child_properties_last, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/social_textfield.dart';
import 'package:flutter_application_1/widget/kayit_login_button.dart';


class KayitPage extends StatefulWidget {
  KayitPage({Key? key}) : super(key: key);

  @override
  State<KayitPage> createState() => _KayitPageState();
}

class _KayitPageState extends State<KayitPage> {

  TextEditingController girilenKullaniciAdi=TextEditingController();
  TextEditingController girilenTelefon=TextEditingController();
  TextEditingController girilenEmail=TextEditingController();
  TextEditingController girilenSehir=TextEditingController();
  TextEditingController girilenIlce=TextEditingController();
  TextEditingController girilenSifre=TextEditingController();
   String yazi="";
   bool deger=false;
   bool sifreBildirimDeger=false;
   bool girisBildirimDeger=false;
   Color color=Colors.red;
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.grey.shade300,

      appBar: AppBar(
        
        shadowColor: Colors.white,
        bottomOpacity: 0,
         backgroundColor: Colors.transparent,
         title: Text(
                "Registration Page",
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
      body: ListView(children: [
         SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
            Container(
              height: MediaQuery.of(context).size.height*(0.82),
              child: Column(
                children: [
                SocialTextfield(
                controller: girilenKullaniciAdi,
                inputText: "Username",
                altyazi: "Enter your username"),
                SocialTextfield(
                yaziGor: true,
                controller: girilenSifre,
                inputText: "Password",
                altyazi: "Enter your password"),
                SocialTextfield(
                controller: girilenTelefon,
                inputText: "Phone",
                altyazi: "Enter your phone"),
                SocialTextfield(
                controller: girilenEmail,
                inputText: "E-Mail",
                altyazi: "Enter your E-mail"),
             SocialTextfield(
                controller: girilenSehir,
                inputText: "City",
                altyazi: "Enter your city"),
                SocialTextfield(
              
                controller: girilenIlce,
                inputText: "Town",
                altyazi: "Enter your town"),
  
             SizedBox(height: 10,),
          
             SizedBox(height: 10,),
             Container(
                width: MediaQuery.of(context).size.width/2,
                 child: KayitLoginButton(
                  buttonText: "Register",
                  onPressed: (){
                    //control();
                  }),
               ),
                ],
              ),
            ),
          
          
            ],
          ),
        )],
      ),
    );
  }
 
       
  
  
 
 
}