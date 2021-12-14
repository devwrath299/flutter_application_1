import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageurl =
        "https://images.unsplash.com/photo-1610878180933-123728745d22?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y2FuYWRhJTIwbmF0dXJlfGVufDB8fDB8fA%3D%3D&w=1000&q=80";

    return Drawer(
      
      child: Container(
        color: Colors.purple,
       
        child: ListView(
        
          padding: EdgeInsets.zero,
          children: [
            
            DrawerHeader(
               
                padding: EdgeInsets.zero,
                
                child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple
                ),
                  margin: EdgeInsets.zero,
                  accountEmail: Text("devwrath1999@gmail.com"),
                  accountName: Text("Devwrath"),
                  currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageurl),)
                )),
                ListTile(
                  leading:Icon(
                CupertinoIcons.home,
                color: Colors.white,

                  ) ,
                  title: Text("Home",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
                ),
                    ListTile(
                  leading:Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,

                  ) ,
                  title: Text("Profile",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
                ),
                 ListTile(
                  leading:Icon(
                CupertinoIcons.mail,
                color: Colors.white,

                  ) ,
                  title: Text("Email",textScaleFactor: 1.2,style: TextStyle(color: Colors.white),),
                )  

          ],
        ),
      ),
    );
  }
}
