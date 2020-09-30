
import 'package:flutter/material.dart';

import 'myanimation.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.black12,
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            SizedBox(width: 60,),
            Text(
              'Animation',
              style: TextStyle(
                fontSize: 28,
              ),
              ),
              Text(
              ' Controller',
              style: TextStyle(
                fontSize: 28,
                color: Colors.blue,
              ),
              ),
          ],
        ),
        backgroundColor: Colors.black12,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: MyAnimation(),
    ),
  ));
}