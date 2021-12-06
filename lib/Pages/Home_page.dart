import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int ys = 7;
    return Scaffold(
      backgroundColor:Colors.pink[100],
      appBar: AppBar(
        title: Text("Catalog App"),
        backgroundColor: Colors.purple,
      ),
      body: Center(
        child: Container(
          child: Text("Hello How $ys are you"),
          
        ),
      ),
      drawer: Drawer(  
      ),
    );
  }
}
