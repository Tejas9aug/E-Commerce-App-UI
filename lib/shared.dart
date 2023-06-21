import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/Authentication/authHome.dart';
import 'package:ecommerce/homePage.dart';
import 'package:ecommerce/yourAcc.dart';
import 'package:ecommerce/cart.dart';
Widget elevatedButton(String title,BuildContext context,Widget widget,double d1,double d2){
  return ElevatedButton(onPressed: (){
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>widget));
  },
      style: ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.greenAccent)),

      )),
      child: Container(
        height: d1*0.072,
        child: Center(
          child: Text(title,style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white),
          fontWeight: FontWeight.w500,
          ),
          ),
        ),
      ));

}
Widget textField(String text,Color color){
  return Material(
    child: TextFormField(
     decoration: InputDecoration(
       hintText: text,
       hintStyle: GoogleFonts.montserrat(textStyle: TextStyle(color: color,fontWeight: FontWeight.w500))

     ),
    ),
  );
}
Widget outlineButton(BuildContext context,double d1,String text){
  return OutlinedButton(onPressed: (){},
     style:ButtonStyle(shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0),
            side: BorderSide(color: Colors.greenAccent)),

      )),
      child:Container(
        height: d1*0.072,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(text,style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.black)),)
          ],
        ),
      ) );
}
Drawer drawer(BuildContext context, double m1, double m2,)
{
  return Drawer(
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(m2*0.03, m1*0.12, m2*0.03, m1*0.015),
          color: Color(0xff02c39a),
          child: Row(
            children: [
              RichText(
                text: TextSpan(
                    text: "Hello, ",
                    style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xff7c4c4c4),fontWeight: FontWeight.w600,fontSize: m1*0.026)),
                    children: [
                      TextSpan(
                        text: "John Cena  ",
                        style:GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: m1*0.026)),

                      )
                    ]
                ),
              ),
              Image.asset("assets/man.jpeg",height: m1*0.04,)
            ],
          ),
        ),
        Divider(height: 2,color: Colors.white,),
        Expanded(
          child: Container(
            padding: EdgeInsets.fromLTRB(m2*0.06, m1*0.08, m2*0.03, m1*0.015),
            color: Color(0xff02c39a),
            child: Column(
              children: [

                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homePage()));
                  },
                  leading: Image.asset("assets/home.png",height: m1*0.025,),
                  title:Text("Home",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homePage()));
                  },
                  leading: Image.asset("assets/category.png",height: m1*0.025,),
                  title:Text("Shop by Category",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => yourAcc()));
                  },
                  leading: Image.asset("assets/user.png",height: m1*0.025,),
                  title:Text("Your account",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => yourAcc()));
                  },
                  leading: Image.asset("assets/switch user.jfif",height: m1*0.025,),
                  title:Text("Change Account",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => cart()));
                  },
                  leading: Image.asset("assets/cart.jfif",height: m1*0.025,),
                  title:Text("Your Cart",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  leading: Image.asset("assets/menu.png",height: m1*0.025,),
                  title:Text("Your Orders",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  leading: Image.asset("assets/wishlist.png",height: m1*0.025,),
                  title:Text("Your Wishlist",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                ),
                ListTile(
                  onTap: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => authHome()));
                  },
                  leading: Image.asset("assets/logout.png",height: m1*0.025,),
                  title:Text("LogOut",style: GoogleFonts.montserrat(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: m1*0.02)),)
                  ,
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}