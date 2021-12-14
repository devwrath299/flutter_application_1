import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/Home_page.dart';
import 'package:flutter_application_1/Pages/login_page.dart';
import 'package:flutter_application_1/utils/routes.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      routes:{
        MyRoutes.Home:(context)=> Home(),
        MyRoutes.Login:(context)=>LoginPage()
      },   
    );
  }
}
