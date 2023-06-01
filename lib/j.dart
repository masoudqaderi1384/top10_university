import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('PopupMenuButton in Flutter'),
        ),
        body: Center(
          child: PopupMenuButton<MenuItem>(
            onSelected: (item) {
              print('Selected value: ${item}');
            },
            itemBuilder: (context) {
              return MenuItems.itemMenu.map((e) {
                return PopupMenuItem<MenuItem>(
                  child: Row(
                    children: [
                      Icon(
                        e.icon,
                        color: Colors.black,
                        size: 20,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(e.text),
                    ],
                  ),
                );
              }).toList();
            },
          ),
        ),
      ),
    );
  }
}

class MenuItem {
  var String text;
  var IconData icon;
  var Color menuColors;
  const MenuItem({
    required this.text,
    required this.icon,
    required this.menuColors,
  }) : this.text = 'Option 1',
        this.icon = Icons.star,
        this.menuColors = Colors.amber;
}

class MenuItems {
  static  List<MenuItem> itemMenu = [
    MenuItem(
      text: 'Settings',
      icon: Icons.settings,
      menuColors: Colors.amber,
    ),
    MenuItem(
      text: 'Rate',
      icon: Icons.star,
      menuColors: Colors.blueAccent,
    ),
    MenuItem(
      text: 'Check Out',
      icon: Icons.shopping_basket,
      menuColors: Colors.green,
    ),
  ];
}
