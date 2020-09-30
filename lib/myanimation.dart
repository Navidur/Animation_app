import 'package:flutter/material.dart';

class MyAnimation extends StatefulWidget {
  @override
  _MyAnimationState createState() => _MyAnimationState();
}

class _MyAnimationState extends State<MyAnimation>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  var Animation;
  

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
      
    );
    
    
   
    
    Animation = CurvedAnimation(parent: _controller, curve: Curves.easeInCubic)
      ..addListener(() {
        setState(() {
          print(Animation.value);
        });
      });
    
    _controller.forward();
    
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            splashColor: Colors.white,
            hoverColor: Colors.indigo,
            onTap: () {
              _controller.forward(from: 0.0);
              print('tapp');
            },
            child: Container(
              alignment: Alignment.center,
              width: 200 * Animation.value,
              height: 200 * Animation.value,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.green,
              ),
              child: Text(
                'Please Tap!',
                style: TextStyle(
                  fontSize: 24 * Animation.value,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Material(
            borderRadius: BorderRadius.circular(20),
            child: MaterialButton(
              height: 50,
              minWidth: 150,
              color: Colors.blueAccent,
              child: Text(
                'Animate',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                ),
              onPressed: () {
                _controller.forward(from: 0.0);
              },
            ),
          ),
        ],
      ),
    );
  }
}
