import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw_secure_login_pdn4.png",
                fit: BoxFit.cover,
                height: 100,
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Welcome $name",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter User name", labelText: "Username"),
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter Password", labelText: "Password"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              InkWell(
                  onTap: () async {
                    setState(() {
                      clicked = true;
                    });

                    await Future.delayed(Duration(seconds: 4));
                    Navigator.pushNamed(context, MyRoutes.Home);
                  },
                  child: AnimatedContainer(
                    width: 100,
                    height: 50,
                    alignment: Alignment.center,
                    child: clicked?Icon(Icons.done,color: Colors.green,):Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
  
                    decoration: BoxDecoration(
                     color: clicked?Colors.black:Colors.deepPurple,
                      shape: clicked?BoxShape.circle:BoxShape.rectangle,
                    ),
                    duration: Duration(seconds: 1),
                  ))
            ],
          ),
        ));
  }
}
