import 'package:flutter/material.dart';
import 'dart:async';

List Myimage = [
  Image.asset('images/uni (2).png'),
  Image.asset('images/uni (1).png'),
  Image.asset('images/uni (11).png'),
  Image.asset('images/uni (4).png'),
  Image.asset('images/uni (3).png'),
  Image.asset('images/uni (7).png'),
  Image.asset('images/uni (14).png'),
  Image.asset('images/uni (6).png'),
  Image.asset('images/uni (13).png'),
  Image.asset('images/uni (12).png'),
];
List Mylist = [
  'Massachusetts Institute of Technology (MIT)',
  'University of Cambridge',
  'Stanford University',
  'University of Oxford',
  'Harvard University',
  'California Institute of Technology (Caltech)',
  'ETH Zurich - Swiss Federal Institute of Technology',
  'UCL (University College London)',
  'University of Chicago',
  'National University of Singapore (NUS)'
];
List Mysubtitle = [
  'United States',
  'United Kingdom',
  'United States',
  'United Kingdom',
  'United States',
  'United States',
  'Switzerland',
  'United Kingdom',
  'United States',
  'Singapore'
];

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
  const HomeScreen({Key? key}) : super(key: key);

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
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem<int>(
                  value: 0,
                  child: Text("Share the app"),
                ),
                PopupMenuItem<int>(
                  value: 1,
                  child: Text("about"),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text("Exit"),

                ),
              ];
            },
            onSelected: (value) {
              if (value == 0) {
                print("My account menu is selected.");
              } else if (value == 1) {
                print("Settings menu is selected.");
              } else if (value == 2) {
                print("Logout menu is selected.");
              }
            },
          ),
        ],

      ),
      body: ListView.builder(
        itemCount: Myimage.length,
        itemBuilder: (c, i) {
          return Container(
            color: Color(0xfffdb235),
            child: Column(children: [
              Container(
                child: ListTile(
                  leading: Container(child:Myimage[i],width: 75,height: 75,margin: EdgeInsets.all(0.0),),
                  title: Text(
                    Mylist[i],
                    style: TextStyle(
                        fontFamily: 'RobotoSlab-Regular.ttf',
                        color: Color(0xff161853),
                        fontWeight: FontWeight.w500,
                        fontSize: 18.0),
                  ),
                  subtitle: Text(Mysubtitle[i]),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage(i)),
                    );
                  },
                ),
              ),
            ]),
          );
        },
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  final int listTileIndex;

  SecondPage(this.listTileIndex);

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
    );
  }
}
