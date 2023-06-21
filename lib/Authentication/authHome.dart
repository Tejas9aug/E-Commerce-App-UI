import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/shared.dart';
import 'package:ecommerce/Authentication/SignUp.dart';
class authHome extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double d1 = MediaQuery.of(context).size.height;
    double d2 = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(d2*0.02, d2*0.04, 0, 0),
        child: Column(
          children: [
            SizedBox(
              height: d1*0.2,
            ),
            Text('Shopping Street',
            style: GoogleFonts.montserrat(
              textStyle: TextStyle(
                fontSize: d1*0.06,
                color: Colors.cyan,fontWeight: FontWeight.w500
              )
            ) ,
            ),
            SizedBox(height: d1*0.016,),
            Hero(
                tag: "signIn",
                child: elevatedButton("Already a customer? Sign In",context, SignUp(true), d1, d2)
            ),
            SizedBox(height: d1*0.018,),
            Hero(
              tag: "register",
              child: OutlinedButton(onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => SignUp(false)));
              } ,
                style:ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
                      side: BorderSide(color: Colors.greenAccent)),

                )),
                  child: Container(
                    height: d1*0.072,
                    child: Center(
                      child: Text("New to Shopping Street.in? Create an account",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF02C39A))),
                      ),
                    ),
                  )),
            )


          ],
        ),
      ),
    );
  }
}
