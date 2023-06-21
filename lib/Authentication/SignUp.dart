import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/shared.dart';
import 'package:ecommerce/yourAcc.dart';
import 'package:ecommerce/Authentication/forgotPass.dart';
import 'package:ecommerce/homePage.dart';
import 'package:ecommerce/Authentication/otpScreen.dart';

import 'package:ecommerce/Authentication/authHome.dart';

class SignUp extends StatefulWidget {

  bool login;

  SignUp(this.login);

  @override
  _SignUpState createState() => _SignUpState(login);
}

class _SignUpState extends State<SignUp> {

  bool login;

  _SignUpState(this.login);

  @override
  Widget build(BuildContext context) {

    double m1 = MediaQuery.of(context).size.height;
    double m2 = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFF181725)),
        leading: IconButton(icon: Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => authHome()));
          },),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.fromLTRB(m2*0.05,m1*0.013,m2*0.05,m1*0.013),
              child: Column(
                children: [
                  Row(
                    children: [
                      !login ? Image.asset('assets/select.png',height: m1*0.026,):
                      CircleAvatar(
                        radius: m1*0.013,
                        backgroundColor: Color(0xFF02c39a),
                        child: CircleAvatar(
                          radius: m1*0.01,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(width: m2*0.03,),
                      Text("CREATE YOUR Shopping Street PROFILE",style: GoogleFonts.montserrat(textStyle: TextStyle(color: login ? Color(0xFF979797):Color(0xFF181725),fontWeight: FontWeight.w500)),)
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      login ? Image.asset('assets/select.png',height: m1*0.026,):
                      CircleAvatar(
                        radius: m1*0.013,
                        backgroundColor: Color(0xFF02c39a),
                        child: CircleAvatar(
                          radius: m1*0.01,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      SizedBox(width: m2*0.03,),
                      Text("LOGIN",style: GoogleFonts.montserrat(textStyle: TextStyle(color: !login ? Color(0xFF979797):Color(0xFF181725),fontWeight: FontWeight.w500)))
                    ],
                  ),
                  SizedBox(height: m1*0.1,),
                  login ? Login(m1,m2) : register(m1,m2)
                ],
              ),
            ),
            Divider(color: Color(0xFF02c39a),thickness: 1.5,),
            SizedBox(height: m1*0.013,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("CONDITIONS OF USE",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF02c39a),fontWeight: FontWeight.w500,fontSize: m2*0.03)),),
                Text("PRIVACY NOTE",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF02c39a),fontWeight: FontWeight.w500,fontSize: m2*0.03,)),),
                Text("HELP",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF02c39a),fontWeight: FontWeight.w500,fontSize: m2*0.03)),)
              ],
            ),
            SizedBox(height: m1*0.03,),
            Text("1996-2020 Shopping Street.com Inc.. or its affiliates",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF979797),fontWeight: FontWeight.w500,fontSize: m2*0.03))),
            SizedBox(height: m1*0.02,),
          ],
        ),
      ),
    );
  }
}

class register extends StatefulWidget {

  double m1;
  double m2;

  register(this.m1,this.m2);

  @override
  _registerState createState() => _registerState(m1,m2);
}

class _registerState extends State<register> {

  double m1;
  double m2;

  _registerState(this.m1,this.m2);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        child: Column(
          children: [
            textField("Full Name",Color(0xFF979797)),
            SizedBox(
              height: m1*0.015,
            ),
            textField("Email Address",Color(0xFF979797)),
            SizedBox(
              height: m1*0.015,
            ),
            textField("Mobile No.",Color(0xFF979797)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Confirm your OTP and enter password", style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF979797),fontWeight: FontWeight.w500,fontSize: m2*0.025)),),
                TextButton(
                  onPressed: (){
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => otpScreen()));
                  },
                  child: Text(
                    "Send OTP",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF02c39a),fontWeight: FontWeight.w600,fontSize: m2*0.03)),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: m1*0.015,
            ),
            //textField("Create Password",Color(0XFFD9D9D9)),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Create Password",
                  hintStyle: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0XFFD9D9D9),fontWeight: FontWeight.w500))

              ),
            ),
            //textField("Re-enter Password",Color(0XFFD9D9D9)),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: " Re-enter Password",
                  hintStyle: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0XFFD9D9D9),fontWeight: FontWeight.w500))

              ),
            ),
            SizedBox(
              height: m1*0.1,
            ),
            Text("By clicking continue you agree to Shopping Street.com's",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF979797),fontWeight: FontWeight.w600,fontSize: m2*0.03))),
            RichText(
              text: TextSpan(
                  text: "Terms and Conditions ",
                  style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF181725),fontWeight: FontWeight.w600)),
                  children: [
                    TextSpan(
                        text: "and ",
                        style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF979797),fontWeight: FontWeight.w600)),
                        children: [
                          TextSpan(
                            text: "Privacy Policy",
                            style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF181725),fontWeight: FontWeight.w600)),

                          )
                        ]
                    )
                  ]
              ),
            ),
            SizedBox(height: m1*0.03,),
            Hero(
                tag: "register",
                child: elevatedButton("Get Started", context, homePage(), m1, m2)),
            SizedBox(height: m1*0.05,),
          ],
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {

  double m1;
  double m2;

  Login(this.m1,this.m2);

  @override
  _LoginState createState() => _LoginState(m1,m2);
}

class _LoginState extends State<Login> {

  double m1;
  double m2;

  _LoginState(this.m1,this.m2);


  @override
  Widget build(BuildContext context) {
    print(m1);
    return Container(
      child: Form(
        child:
        Column(
          children: [
            textField("Email Address",Color(0xFF979797)),
            SizedBox(
              height: m1*0.015,
            ),
            textField("Enter Password",Color(0xFF979797)),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: (){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => forgotPass()));
                },
                child: Text(
                  "Forgot Password",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF02c39a),fontWeight: FontWeight.w600)),
                ),
              ),
            ),
            SizedBox(
              height: m1*0.05,
            ),
            Row(
              children: [
                Container(color: Color(0xFF02c39a),height: 1.5,width: m2*0.37,),
                SizedBox(width: m2*0.04,),
                Text("OR",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF181725),fontWeight: FontWeight.w600)),),
                SizedBox(width: m2*0.04,),
                Container(color: Color(0xFF02c39a),height: 1.5,width: m2*0.37,),
              ],
            ),
            SizedBox(height: m1*0.02,),
            Hero(
                tag: "otp",
                child: elevatedButton("Send OTP to mobile no.",context, otpScreen(), m1, m2)),
            SizedBox(height: m1*0.07,),
            Text("By clicking continue you agree to Shopping Street.com's",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF979797),fontWeight: FontWeight.w600,fontSize: m2*0.03))),
            RichText(
              text: TextSpan(
                  text: "Terms and Conditions ",
                  style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF181725),fontWeight: FontWeight.w600)),
                  children: [
                    TextSpan(
                        text: "and ",
                        style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF979797),fontWeight: FontWeight.w600)),
                        children: [
                          TextSpan(
                            text: "Privacy Policy",
                            style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF181725),fontWeight: FontWeight.w600)),
                          )
                        ]
                    )
                  ]
              ),
            ),
            SizedBox(height: m1*0.03,),
            Hero(
                tag: "signIn",
                child: elevatedButton("Continue", context, otpScreen(), m1, m2)),
            SizedBox(height: m1*0.05,),

          ],
        ),
      ),
    );
  }
}

