import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/Authentication/SignUp.dart';

import 'package:ecommerce/homePage.dart';

import 'package:ecommerce/shared.dart';

class forgotPass extends StatefulWidget {
  @override
  _forgotPassState createState() => _forgotPassState();
}

class _forgotPassState extends State<forgotPass> {
  @override
  Widget build(BuildContext context) {

    double m1 = MediaQuery.of(context).size.height;
    double m2 = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFF02c39a),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: m1*0.15,),
          Container(
            padding: EdgeInsets.fromLTRB(m2*0.05, m1*0.03, m2*0.05, m1*0.03),
            height: m1*0.635,
            width: m2*0.85,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(m1*0.026),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Color(0xFF02c39a),
                  radius: m1*0.065,
                  child: Text("!",style: TextStyle(fontWeight: FontWeight.w900,fontSize: m1*0.091,color: Colors.white),),
                ),
                SizedBox(height: m1*0.018,),
                Text("Forgot Password!",style: GoogleFonts.montserrat(textStyle: TextStyle(color:Color(0xFF181725),fontWeight: FontWeight.w600,fontSize: m1*0.025)),),
                SizedBox(height: m1*0.018,),
                Text("Enter your emailId and we will send a link to reset your password",textAlign:TextAlign.center,style: GoogleFonts.montserrat(textStyle: TextStyle(color:Color(0xFF181725),fontWeight: FontWeight.w500,fontSize: m1*0.017))),
                SizedBox(height: m1*0.036,),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter emailId",
                      border: OutlineInputBorder(borderSide: BorderSide(width: 1))
                  ),
                ),
                SizedBox(height: m1*0.016,),
                Text("We cannot find your email. Please enter the one which is linked to your account", style: GoogleFonts.montserrat(
                    textStyle: TextStyle(color:Color(0xFFeb7777),fontWeight: FontWeight.w600,fontSize: m1*0.015)),),
                SizedBox(height: m1*0.036,),
                elevatedButton("Submit", context, SignUp(true), m1, m2),
                SizedBox(height: m1*0.016,),
                Text("Back to login page.",textAlign:TextAlign.center,style: GoogleFonts.montserrat(textStyle: TextStyle(color:Color(0xFF181725),fontWeight: FontWeight.w500,fontSize: m1*0.017))),

              ],
            ),
          ),
          SizedBox(height: m1*0.07,),
          Divider(color: Colors.white,thickness: 1.5,),
          SizedBox(height: m1*0.013,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("CONDITIONS OF USE",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white),fontWeight: FontWeight.w500,fontSize: m2*0.03)),
              Text("PRIVACY NOTE",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white),fontWeight: FontWeight.w500,fontSize: m2*0.03,)),
              Text("HELP",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m2*0.03))),
            ],
          ),
          SizedBox(height: m1*0.03,),
          Text("1996-2023 Shopping Street.com Inc.. or its affiliates",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m2*0.03))),
          SizedBox(height: m1*0.02,),
        ],
      ),
    );
  }
}