import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

//learn to increment number
int nilai = 0;

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login page"),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 40.0),
        
        children: [
          email,
          Padding(
            padding: EdgeInsets.all(10),
          ),
          Password,
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  title: Text("Info!"),
                  content: Text("Login gagal"),
                  actions: [
                    ElevatedButton(
                      onPressed: () {},
                      child: Text("OK!"),
                    ),
                  ],
                ),
              );
            },
            child: Text("Login"),
          ),
        ],
      ),
    );
  }
}

Widget email = TextField(
  autocorrect: false,
  decoration: InputDecoration(
    labelText: "Email",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);

Widget Password = TextField(
  autocorrect: false,
  obscureText: true,
  decoration: InputDecoration(
    labelText: "Password",
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
  ),
);
