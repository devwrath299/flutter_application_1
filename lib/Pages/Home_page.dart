import 'package:flutter/material.dart';
import 'package:flutter_application_1/Widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int ys = 7;
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Catalog App"),
        
      ),
      body: Center(
        child: Container(
          child: Text("Hello How $ys are you"),
          
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
