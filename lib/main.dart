import 'package:flutter/material.dart';
import 'package:app/screens/home.dart';
import 'package:app/screens/payform.dart';
import 'package:app/screens/profile.dart';
import 'package:app/screens/logout.dart';

void main() {
  runApp(new MaterialApp(
      // Title
      title: "Bill Pay",
      // Home
      home: new MyHome()));
}

class MyHome extends StatefulWidget {
  @override
  MyHomeState createState() => new MyHomeState();
}

// SingleTickerProviderStateMixin is used for animation
class MyHomeState extends State<MyHome> with SingleTickerProviderStateMixin {
  // Create a tab controller
  TabController controller;

  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      // Appbar
      appBar: new AppBar(
        // Title
        title: new Text("Demo App"),
        // Set the background color of the App Bar
        backgroundColor: Colors.blue,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: new TabBarView(
        // Add tabs as widgets
        children: <Widget>[new HomePage(), new PayformPage(), new ProfilePage(), new LogoutPage()],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: new Material(
        // set the color of the bottom navigation bar
        color: Colors.blue,
        // set the tab bar as the child of bottom navigation bar
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              // set icon to the tab
              text: "Home",
              icon: new Icon(Icons.home),
            ),
            new Tab(
              text: "Bill Pay",
              icon: new Icon(Icons.business),
            ),
            new Tab(
              text: "Profile",
              icon: new Icon(Icons.person),
            ),
            new Tab(
              text: "Logout",
              icon: new Icon(Icons.power),
            ),
          ],
          // setup the controller
          controller: controller,
        ),
      ),
    );
  }
}