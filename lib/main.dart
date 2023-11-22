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
          /* leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => {print("Menu Icon has been pressed")},
          ),*/
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
        floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: Icon(Icons.add),
          onPressed: () => {},
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        drawer: Drawer(
          elevation: 15.0,
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Francis"),
                accountEmail: Text("Francis@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text("Francis"),
                ),
                otherAccountsPictures: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Text("SF"),
                  )
                ],
              ),
              ListTile(
                title: Text("All Inbox"),
                leading: Icon(Icons.mail),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: Text("All Primary"),
                leading: Icon(Icons.person),
              ),
              Divider(
                height: 0.1,
              ),
              ListTile(
                title: Text("Promotio"),
                leading: Icon(Icons.people),
              ),
              Divider(
                height: 0.1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
