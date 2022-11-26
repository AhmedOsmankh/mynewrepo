// ignore: file_names
// ignore: file_names
// ignore_for_file: avoid_unnecessary_containers, file_names, duplicate_ignore, deprecated_member_use, unused_import, prefer_const_constructors
import "package:flutter/material.dart";
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _LoginState createState() => _LoginState();}
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( body: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [ Image.asset("images/1.jpg"),
        Container(  padding: const EdgeInsets.all(20),
          child: Form( child: Column(  children: [   TextFormField(
                // ignore: prefer_const_constructors
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.person),
                    hintText: "username",
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1))),  ),
              // ignore: prefer_const_constructors
              SizedBox(   height: 20,   ),
              TextFormField(  obscureText: true,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "password",
                    border:
                        OutlineInputBorder(borderSide: BorderSide(width: 1))),  ),
              Container(
                  // ignore: prefer_const_constructors
                  margin: EdgeInsets.all(10),
                  // ignore: prefer_const_literals_to_create_immutables
                  child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [Text("if you haven't account "),
                      // ignore: prefer_const_constructors
                      InkWell(  onTap: () {
                          Navigator.of(context).pushNamed("signup"); },
                        child: Text("click here",
                            style: TextStyle(color: Colors.blue)), ) ],  )),
              // ignore: prefer_const_constructCors
              Container(
                // ignore: prefer_const_constructors
                margin: EdgeInsets.all(1),
              ),
              Container(
                child: RaisedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed("homepage");   }
                  // ignore: prefer_const_constructors, sort_child_properties_last ,
                  // ignore: sort_child_properties_last
                 , child: const Text(   "تسجيل الدخول",
                    style: TextStyle(fontSize: 20), ),
                  color: Colors.blue,
                  textColor: Colors.white,),  )   ],  )),  ),  ], ));  }}
