import 'package:ecommerce/Authentication/SignUp.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/Authentication/authHome.dart';

void main(){
  runApp(MyApp());
      
}
class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'flutter Demo',
      home: authHome(),
    );
  }
}
