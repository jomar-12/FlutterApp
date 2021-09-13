// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      home: Home(),
    ));

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[600],
      appBar: AppBar(
        title: Text('Login'),
        elevation: 0.0,
        centerTitle: true,
        backgroundColor: Colors.grey[850],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        backgroundColor: Colors.amber,
      ),
      body: SingleChildScrollView(
          padding: EdgeInsets.all(30.0),
          child: ConstrainedBox(
            constraints: BoxConstraints(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('ImaginationSoft PR',
                    style: TextStyle(color: Colors.white, fontSize: 30.0)),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 0, vertical: 40),
                  child: Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                          child: TextFormField(
                              decoration: const InputDecoration(
                                  suffixIcon: Icon(
                                    Icons.person,
                                    color: Colors.white,
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Colors.white)),
                                  labelText: 'Enter your username',
                                  labelStyle: TextStyle(color: Colors.white)),
                              style: TextStyle(color: Colors.white))),
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: TextFormField(
                          decoration: const InputDecoration(
                              suffixIcon: Icon(
                                Icons.lock,
                                color: Colors.white,
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.white)),
                              labelText: 'Enter your password',
                              labelStyle: TextStyle(color: Colors.white)),
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.grey.shade800,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 15)),
                    onPressed: () {},
                    child: Text('Log in')),
                Center(
                  child: Text(
                    '$counter',
                    style: TextStyle(fontSize: 32),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
