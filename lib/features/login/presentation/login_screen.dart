import 'dart:ui';

import 'package:fit_swim/features/dashboard/presentation/students_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.deepOrangeAccent,
          Colors.deepOrange,
          Colors.orange,
          Colors.orangeAccent,
          Colors.orange,
          Colors.deepOrange,
          Colors.deepOrangeAccent
        ], begin: Alignment.topRight, end: Alignment.bottomLeft)),
        child: Center(
          child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.4),
                blurRadius: 20,
                spreadRadius: 4,
                offset: Offset(0, 0),
              ),
            ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  decoration:
                      BoxDecoration(color: Colors.white.withOpacity(0.6)),
                  height: 400,
                  width: 400,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        "Fit Swim",
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.account_circle,
                        size: 128,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          filled: true,
                          fillColor: Colors.black26,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            // Cantos arredondados
                            borderSide:
                                BorderSide.none,
                          ),
                        ),
                        style: TextStyle(
                            color:
                            Colors.black87),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          // label: Text("Senha"),
                          hintText: "Senha",

                          filled: true,
                          fillColor: Colors.black26,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 16, horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide:
                                BorderSide.none,
                          ),
                        ),
                        style: TextStyle(
                            color:
                            Colors.black87),

                      ),
                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => StudentScreen()));
                      }, child: Text("Login"))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
