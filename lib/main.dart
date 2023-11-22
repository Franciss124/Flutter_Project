import 'package:flutter/material.dart';
import 'package:flutter/src/material/icon_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _State();
}

class _State extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.green),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => {print("Menu Icon has been pressed")},
          ),
          title: Text(
            'MyApp',
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          //  backgroundColor: Colors.lightGreen,
          centerTitle: true,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: () => {},
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () => {},
            )
          ],
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25))),
        ),
        body: Center(
          child: Text('I am Eargar to learn! \nFrancis'),
        ),
      ),
    );
  }
}
