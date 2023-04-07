import 'package:flutter/material.dart';

void main() {
  runApp(
      const HomeScreen()
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> serverUi = [

    {'type' : 'Sized Box', 'height' : 20.0},
    {'type': 'TextField', 'hint': 'Name', 'obscure': false},
    {'type' : 'SizedBox', 'height' : 10.0},
    {'type': 'TextField', 'hint': 'Email', 'obscure': false},
    {'type' : 'SizedBox', 'height' : 10.0},
    {'type': 'TextField', 'hint': 'Password', 'obscure': false},
    {'type' : 'SizedBox', 'height' : 10.0},
    {'type': 'TextField', 'hint': 'Confirm Password', 'obscure': false},
    {'type' : 'SizedBox', 'height' : 10.0},
    {'type': 'MaterialButton', 'hint': 'Login'},
    {'type' : 'SizedBox', 'height' : 20.0},
    {'type' : 'FlutterLogo', 'size': 80.0},
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> sduiWidgets = [];
    serverUi.forEach((e) {
      String type = e['type'];

      switch(type) {
        case 'SizedBox':
            sduiWidgets.add(SizedBox(
              height: e['height'],
            ));
        break;

        case 'FlutterLogo':
          sduiWidgets.add(FlutterLogo(
            size: e['size'],
          ));
          break;

        case 'TextField':
          sduiWidgets.add(TextField(
            obscureText: e['obscure'],
            decoration: InputDecoration(
              hintText: e['hint'],
              border: OutlineInputBorder(),
            ),
          ));
          break;

        case 'MaterialButton':
          sduiWidgets.add(MaterialButton(
            onPressed: () {},
            color: Colors.blue,
            minWidth: double.infinity,
            child: Text(e['hint']),
          ),

          );
          break;
      }
    });

    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: const Text('Server Driven UI'),
      ),
      body: Container (
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          children: [...sduiWidgets],
        ),
      ),
      ),
    );
  }
}
