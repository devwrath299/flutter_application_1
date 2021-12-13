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
  final _formkey = GlobalKey<FormState>();
  movetoHome(BuildContext context) async {
    if (_formkey.currentState!.validate()) {
      setState(() {
        clicked = true;
      });

      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.Home);
      setState(() {
        clicked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Form(
            key:_formkey,
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
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username Cannot be Empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Username Cannot be Empty";
                          } else if (value.length < 6)
                            return "Password Length Cannot less tahn 6";

                          return null;
                        },
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Material(
                  color: clicked ? Colors.black : Colors.deepPurple,
                  borderRadius: BorderRadius.circular(clicked ? 100 : 8),
                  child: InkWell(
                      onTap: () => movetoHome(context),
                      child: AnimatedContainer(
                        width: 100,
                        height: 50,
                        alignment: Alignment.center,
                        child: clicked
                            ? Icon(
                                Icons.done,
                                color: Colors.green,
                              )
                            : Text(
                                "Login",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                        duration: Duration(seconds: 1),
                      )),
                )
              ],
            ),
          ),
        ));
  }
}
