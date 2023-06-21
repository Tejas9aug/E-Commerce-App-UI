import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/shared.dart';
class yourAcc extends StatefulWidget {
  const yourAcc({Key? key}) : super(key: key);

  @override
  State<yourAcc> createState() => _yourAccState();
}

class _yourAccState extends State<yourAcc> {
  @override
  Widget build(BuildContext context) {
    double d1 = MediaQuery.of(context).size.height;
    double d2 = MediaQuery.of(context).size.height;
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF02c39a),
        elevation: 0,
        title: RichText(
          text: TextSpan(
              text: "Hello, ",
              style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xff7c4c4c4),fontWeight: FontWeight.w600,fontSize: d1*0.026)),
              children: [
                TextSpan(
                  text: " John Cena  ",
                  style:GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: d1*0.026)),

                )
              ]
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(d2 * 0.05, d1*0.03, d2 * 0.05, d1 * 0.013),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        height: d1*0.14,
                        width: d1*0.14,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(image: AssetImage('assets/man.jpeg',),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(height: d1*0.013,),
                      Text("Change Picture",style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Color(0xff979797),
                              fontWeight: FontWeight.w500,
                              fontSize: d2 * 0.04)),)
                    ],
                  ),
                ],
              ),
              SizedBox(height: d1*0.08,),
              textField("Change your account name", Color(0xffd9d9d9)),
              textField("Change your password", Color(0xffd9d9d9)),
              SizedBox(height: d1*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Enhance the product",style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.w500,
                          fontSize: d2 * 0.03)),),
                ],
              ),
              SizedBox(height: d1*0.02),
              outlineButton(context,d1,"Reviews and feedback window"),
              outlineButton(context,d1,"Questions and Answers asked"),
              SizedBox(height: d1*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your purchases",style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.w500,
                          fontSize: d2 * 0.04)),),
                ],
              ),
              SizedBox(height: d1*0.02),
              outlineButton(context,d1,"Earlier purchases"),
              outlineButton(context,d1,"Get into shopping with us!"),
              SizedBox(height: d1*0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Your Addresses",style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                          color: Color(0xff181725),
                          fontWeight: FontWeight.w500,
                          fontSize: d2 * 0.04)),),
                ],
              ),
              SizedBox(height: d1*0.02),
              outlineButton(context,d1,"Existing address"),
              outlineButton(context,d1,"Add a new address"),
              SizedBox(height: d1*0.02),
              ElevatedButton(onPressed: (){},
                  style:ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
                        side: BorderSide(color: Colors.greenAccent)),

                  )),
                  child:
                      Container(
                        height: d1*0.072,
                        child: Center(
                          child: Text("Update",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white),fontWeight: FontWeight.w500),),
                        ),
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}
