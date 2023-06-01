import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(SplashScreenApp());

class SplashScreenApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Splash Screen App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFffd93d),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "images/top10_university.png",
              height: 200,
              width: 400,
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  double screenHeight= 0;
  double screenWidth=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff4f200d),
        title: Text(
          'Top 10 University',
          style: TextStyle(
            fontFamily: "instagram",
          ),
        ),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.more_vert), onPressed: () {}),
        ],
      ),
      body: ListView(children: [
        ListTile(
          title: Text('University of Oxford',
              style: TextStyle(
                fontFamily: 'comfortaa',
                fontSize: 24,
              ),
          ),
          subtitle: Text('United Kingdom',
            style: TextStyle(
              fontFamily: 'comfortaa',
              fontSize: 16,
            ),
          ),
          leading: Image.asset("images/uni (4).png"),
        ),
        ListTile(
          title: Text('Harvard University',
            style: TextStyle(
              fontFamily: 'comfortaa',
              fontSize: 24,
            ),
          ),
          subtitle: Text('United States',
            style: TextStyle(
              fontFamily: 'comfortaa',
              fontSize: 24,
            ),
          ),
          leading: Image.asset('images/uni (3).png'),
        ),
        ListTile(
            title: Text('University of Cambridge',
              style: TextStyle(
                fontFamily: 'comfortaa',
                fontSize: 24,
              ),
            ),
            subtitle: Text('United Kingdom',
              style: TextStyle(
                fontFamily: 'comfortaa',
                fontSize: 24,
              ),
            ),
            leading: Image.asset('images/uni (3).png')),
        ListTile(
          title: Text('Stanford University',
            style: TextStyle(
              fontFamily: 'comfortaa',
              fontSize: 24,
            ),
          ),
          subtitle: Text('United States',
            style: TextStyle(
              fontFamily: 'comfortaa',
              fontSize: 24,
            ),

          ),
          leading: Image.asset('images/uni (3).png'),
        ),
        ListTile(
          title: Text('Nangarhar University',
            style: TextStyle(
              fontFamily: 'comfortaa',
              fontSize: 24,
            ),

          ),
          subtitle: Text('United States',
            style: TextStyle(
              fontFamily: 'comfortaa',
              fontSize: 24,
            ),
          ),
          leading: Image.asset('images/uni (3).png'),
        ),
        ListTile(
          title: Text('Albirone University',
            style: TextStyle(
              fontFamily: 'comfortaa',
              fontSize: 24,
            ),
          ),
          subtitle: Text('United States',
            style: TextStyle(
              fontFamily: 'comfortaa',
              fontSize: 24,
            ),
          ),
          leading: Image.asset('images/uni (3).png'),
        ),
        ListTile(
          title: Text('Jalal Abad University'),
          subtitle: Text('United States'),
          leading: Image.asset('images/uni (3).png'),
        ),
        ListTile(
          title: Text('Ghazne University'),
          subtitle: Text('United States'),
          leading: Image.asset('images/uni (3).png'),
        ),
        ListTile(
          title: Text('parwan University'),
          subtitle: Text('United States'),
          leading: Image.asset('images/uni (3).png'),
        ),
        ListTile(
          title: Text('Imperial College London'),
          subtitle: Text('United Kingdom'),
          leading: Image.asset('images/uni (3).png'),
        ),
      ]),
    );
  }
}
