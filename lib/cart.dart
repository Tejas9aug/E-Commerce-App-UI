import 'package:flutter/material.dart';

import 'package:ecommerce/homePage.dart';

import 'package:ecommerce/shared.dart';
import 'package:google_fonts/google_fonts.dart';

class cart extends StatefulWidget {
  @override
  _cartState createState() => _cartState();
}

class _cartState extends State<cart> {


  @override
  Widget build(BuildContext context) {

    double d1 = MediaQuery.of(context).size.height;
    double d2 = MediaQuery.of(context).size.width;


    bool Value = false;



    Widget card(String title,String price,String status,String asset)
    {
      return Container(
        padding: EdgeInsets.fromLTRB(d2*0.04, d1*0.02, d2*0.04, d1*0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: Value,
                  onChanged: (value)
                  {
                    setState(() {
                      Value = true;
                    });
                  },
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(title, style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            color: Color(0xff181725),
                            fontWeight: FontWeight.w500,
                            fontSize: d2 * 0.035)),),
                  ],
                ),
                SizedBox(height: d1*0.007,),
                Text("Special Design",style:GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Color(0xffc4c4c4),
                        fontWeight: FontWeight.w500,
                        fontSize: d2 * 0.035)),),
                SizedBox(height: d1*0.007,),
                RichText(
                  text: TextSpan(
                      text: price +"  ",
                      style:GoogleFonts.montserrat(textStyle: TextStyle(color: Color(0xFF181725),fontWeight: FontWeight.w500)),
                      children: [
                        TextSpan(
                          text: status,
                          style:GoogleFonts.montserrat(textStyle: TextStyle(color: status=="In Stock" ? Colors.green: Colors.grey,fontWeight: FontWeight.w600)),

                        )
                      ]
                  ),
                ),
                SizedBox(height: d1*0.007,),
                Row(
                  children: [
                    Container(
                      height: d1*0.05,
                      color: Color(0xffd9d9d9),
                      child:
                      Row(
                        children: [
                          IconButton(icon: Icon(Icons.remove), onPressed: null),
                          Text("1"),
                          IconButton(icon: Icon(Icons.add), onPressed: null),
                        ],
                      ),
                    ),
                    SizedBox(width: d2*0.01 ,),
                    Container(                             height: d1*0.05,
                        color: Color(0xffd9d9d9),
                        child: Icon(Icons.delete))
                  ],
                )
              ],
            ),
            SizedBox(width: d2*0.01 ,),
            Image.asset(asset,height: d1*0.14,width: d2*0.35,)
          ],
        ),
      );
    }

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.arrow_back),
            onPressed: ()
            {
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => homePage()));
            },),
          iconTheme: IconThemeData(color: Colors.black),
        ),
        drawer: drawer(context,d1,d2),
        body: Builder(
          builder: (BuildContext context){
            return SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    child:Container(
                      padding: EdgeInsets.fromLTRB(d2*0.06, d1*0.02, d2*0.03, d1*0.015),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("CART",style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Color(0xff181725),
                                      fontWeight: FontWeight.w500,
                                      fontSize: d2 * 0.05)),),
                              IconButton(icon: Icon(Icons.menu,size: d1*0.04,), onPressed: ()
                              {
                                // Navigator.push(context, MaterialPageRoute(builder: (context) => drawer(context,m1,m2)));
                                Scaffold.of(context).openDrawer();
                              })
                            ],
                          ),
                          SizedBox(height: d1*0.01,),
                          Row(
                            children: [
                              Text("3 items",style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Color(0xffc4c4c4),
                                      fontWeight: FontWeight.w500,
                                      fontSize: d2 * 0.035)),),
                              SizedBox(width: d2*0.11,),
                              Icon(Icons.check,size: d2*0.05,),
                              SizedBox(width: d2*0.005,),
                              Text("Select all",style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Color(0xff181725),
                                      fontWeight: FontWeight.w500,
                                      fontSize: d2 * 0.035)),),
                              SizedBox(width: d2*0.02,),
                              Icon(Icons.delete,size: d2*0.05,),
                              SizedBox(width: d2*0.005,),
                              Text("Delete selected",style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                      color: Color(0xff181725),
                                      fontWeight: FontWeight.w500,
                                      fontSize: d2 * 0.035)),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  card("Artsy","12","In Stock","assets/hbag.jpg"),
                  card("Wildcraft","12","In Stock","assets/wbag.jpeg"),
                  card("Iphone 14 Pro","36","Out of Stock","assets/iphone.jfif"),
                  SizedBox(height: d1*0.01,),
                  Padding(
                    padding: EdgeInsets.all(d1*0.03),
                    child: ElevatedButton(onPressed: (){},
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
                  )
                ],
              ),
            );
          },
          // child:
        )
    );
  }
}