import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy/buildButton.dart';
import 'package:pharmacy/addPatient.dart';
import 'package:pharmacy/searchPatient.dart';
import 'package:pharmacy/searchProduct.dart';
import 'package:pharmacy/writeNotes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App with Sidebar and Buttons',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false, // Remove debug banner
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      drawer: buildDrawer(),
      body: buildBody(context), // Pass the context to buildBody method
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      actions: [
        IconButton(
          icon: Icon(Icons.account_circle),
          onPressed: () {
            // Add your account icon action here
          },
        ),
      ],
    );
  }

  Widget buildDrawer() {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Sidebar Header',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            title: Text('Sidebar Item 1'),
            onTap: () {
              // Add your sidebar item 1 action here
            },
          ),
          ListTile(
            title: Text('Sidebar Item 2'),
            onTap: () {
              // Add your sidebar item 2 action here
            },
          ),
          // Add more list tiles for additional sidebar items
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Center(
            child: Text(
              'Main Page',
              style: TextStyle(fontSize: 24.0, color: Colors.black),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildButton(
                  'Add Patient',
                  () {
                    // Navigate to another page when button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AddPatientPage()),
                    );
                  },
                ),
                buildButton(
                  'Search Product',
                  () {
                    // Navigate to another page when button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchProductPage()),
                    );
                  },
                ),
                buildButton(
                  'Write Notes',
                  () {
                    // Navigate to another page when button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WriteNotesPage()),
                    );
                  },
                ),
                buildButton(
                  'Search Patient',
                  () {
                    // Navigate to another page when button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SearchPatientPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
