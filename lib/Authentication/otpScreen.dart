import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:ecommerce/Authentication/SignUp.dart';
import 'package:ecommerce/homePage.dart';

import 'package:ecommerce/shared.dart';

class otpScreen extends StatefulWidget {
  @override
  _otpScreenState createState() => _otpScreenState();
}

class _otpScreenState extends State<otpScreen> {


  @override
  Widget build(BuildContext context) {

    double m1 = MediaQuery.of(context).size.height;
    double m2 = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: ()
          {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => SignUp(false)));
          },
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Color(0xFF181725)),
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.fromLTRB(m2*0.05,m1*0.013,m2*0.05,m1*0.013),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.fromLTRB(m2*0.05,0,m2*0.05,0),
                  child: Column(
                    children: [
                      Text("VERIFYING OTP ...",style: GoogleFonts.montserrat(textStyle: TextStyle(color:Color(0xFF181725),fontWeight: FontWeight.w500,fontSize: m1*0.025)),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(width:40,child: textField('9', Color(0xFF02c39a))),
                          Container(width:40,child: textField('8', Color(0xFF02c39a))),
                          Container(width:40,child: textField('7', Color(0xFF02c39a))),
                          Container(width:40,child: textField('6', Color(0xFF02c39a)))
                        ],
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
                      SizedBox(
                        height: m1*0.07,
                      ),
                    ],
                  ),
                ),
                Hero(
                    tag: 'otp',
                    child: elevatedButton("Continue", context, homePage(), m1, m2)
                ),
              ],
            ),
          ),
          SizedBox(height: m1*0.35,),
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
    );
  }
}