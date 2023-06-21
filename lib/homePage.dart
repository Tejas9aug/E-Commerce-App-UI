import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ecommerce/shared.dart';
import 'package:ecommerce/cart.dart';
import 'package:ecommerce/yourAcc.dart';

class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    double d1 = MediaQuery.of(context).size.height;
    double d2 = MediaQuery.of(context).size.width;

    Image img1 = Image.asset("assets/bag.jpg");
    Image img2 = Image.asset("assets/bag.jpg");
    Image img3 = Image.asset("assets/bag.jpg");
    Image img4 = Image.asset("assets/bag.jpg");
    Image img5 = Image.asset("assets/bag.jpg");
    Image img6 = Image.asset("assets/bag.jpg");

    List<Widget> imgList = [img1, img2, img3, img4, img5, img6];

    Widget category(String asset, String text, Color color) {
      return Column(
        children: [
          RawMaterialButton(
            onPressed: () {},
            elevation: 5.0,
            fillColor: color,
            child: CircleAvatar(
              backgroundColor: color,
              child: SvgPicture.asset(
                asset,
                height: d1 * 0.05,
              ),
              radius: d1 * 0.039,
            ),
            shape: CircleBorder(),
          ),
          SizedBox(
            height: d1 * 0.01,
          ),
          Text(
            text,
            style: GoogleFonts.montserrat(
                textStyle: TextStyle(
                    color: Color(0xff181725),
                    fontWeight: FontWeight.w500,
                    fontSize: d2 * 0.035)),
          ),
        ],
      );
    }

    Widget object(String asset, String offer)
    {
      return Stack(
        children: [
          Container(
            height: d1*0.34,
            width: d2*0.45,
          ),
          Positioned(
            top: d1*0.007,
            right: d2*0.015,
            child: Container(
              height: d1*0.25,
              width: d2*0.42,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffdddddd)
              ),
              child: Center(child: Image.asset(asset,height: d1*0.15,)),
            ),
          ),
          Positioned(
              top: 0,
              right:0,
              child: CircleAvatar(
                radius: d1*0.035,
                backgroundColor: Color(0xff02c39a),
                child: Text(offer,style: GoogleFonts.montserrat(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: d2 * 0.035))),
              ))
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Shopping Street"),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => cart()));
            },),
        ],
        backgroundColor: Color(0xFF02c39a),
      ),
      drawer: drawer(context,d1,d2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                width: double.infinity,
                color: Color(0xFF02c39a),
                padding: EdgeInsets.fromLTRB(d2 * 0.05, 0, d2 * 0.05, d1 * 0.013),
                child: Column(
                  children: [
                    Text(
                      "John!! Welcome to Shopping Street",
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: d2 * 0.05)),
                    ),
                    SizedBox(
                      height: d1 * 0.016,
                    ),
                    Card(
                      color: Colors.white,
                      elevation: 10,
                      child: Container(
                        padding:
                        EdgeInsets.fromLTRB(d2 * 0.025, 0, d2 * 0.025, 0),
                        width: double.infinity,
                        height: d1 * 0.05,
                        child: Row(
                          children: [
                            Icon(Icons.search, color: Colors.black),
                            SizedBox(
                              width: d2 * 0.03,
                            ),
                            Container(
                              width: d2 * 0.45,
                              child: TextField(
                                textAlignVertical: TextAlignVertical.center,
                                cursorColor: Colors.black,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Search',
                                    hintStyle: GoogleFonts.montserrat(
                                        textStyle: TextStyle(
                                            color: Colors.black,
                                            fontSize: d1 * 0.019,
                                            fontWeight: FontWeight.w400))),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: d1 * 0.01,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: d2 * 0.01,
                        ),
                        Text("Deliver to Clooney- San Francisco 28",
                            style: GoogleFonts.montserrat(
                                textStyle: TextStyle(
                                    color: Colors.white,
                                    fontSize: d1 * 0.016,
                                    fontWeight: FontWeight.w400))),
                      ],
                    ),
                  ],
                )),
            Container(
              height: d1 * 0.15,
              padding: EdgeInsets.all(d1 * 0.018),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  category("assets/dress.svg", " LADIES FASHION", Color(0xffffdab9)),
                  category("assets/iphone.svg", "MOBILES", Color(0xffCDEAC0)),
                  category("assets/grocery.svg", "GROCERY", Color(0xffE0FBFC)),
                  category("assets/shoes.svg", "SHOES", Color(0xff979797)),
                  category("assets/furniture.svg", "FURNITURE", Color(0xffFEF7E4)),
                  category("assets/mfashion.svg", "MENS FASHION", Colors.black12)
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              height: 1,
            ),
            Stack(
              children: [
                Container(
                  height: d1*0.24,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/bagt.jpeg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                    top: d1*0.018,
                    left: d2*0.04,
                    child: Column(
                      children: [
                        Text(
                          "TRAVEL BAGS",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: d2 * 0.04)),
                        ),
                        Text(
                          "50-80 % OFF",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: d2 * 0.04)),
                        )
                      ],
                    )),
                Positioned(
                  top: d1*0.2,
                  left: d2*0.42,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imgList.map((ind) {
                      int index = imgList.indexOf(ind);
                      return Padding(
                        padding: EdgeInsets.all(d1 * 0.006),
                        child: CircleAvatar(
                          radius: d1 * 0.006,
                          backgroundColor: index == 1 ? Colors.black : Colors.grey,
                        ),
                      );
                    }).toList(),
                  ),
                )
              ],
            ),
            SizedBox(height: d1*0.02,),
            Stack(
              children: [
                Container(
                  height: d1*0.24,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            "assets/iphone.jpeg",
                          ),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                    top: d1*0.019,
                    left: d2*0.04,
                    child: Column(
                      children: [
                        Text(
                          "IPHONE 14 PRO MAX",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: d2 * 0.04)),
                        ),
                        Text(
                          "10-20% OFF ON EMI PAYMENTS",
                          style: GoogleFonts.montserrat(
                              textStyle: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: d2 * 0.04)),
                        )
                      ],
                    )),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(d1*0.01),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "DEALS OF THE DAY",
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: d2 * 0.04)),
                      ),
                    ],
                  ),

                ],
              ),
            ),
            Container(
              height: d1*0.3,
              padding: EdgeInsets.fromLTRB(d2*0.04,d1*0.013,d2*0.04,d1*0.013),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  object("assets/hbag.jpg", "70%"),
                  SizedBox(width: d2*0.03,),
                  object("assets/hbag.jpg", "20%"),
                  SizedBox(width: d2*0.03,),
                  object("assets/hbag.jpg", "60%"),
                  SizedBox(width: d2*0.03,),
                  object("assets/hbag.jpg", "40%")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
