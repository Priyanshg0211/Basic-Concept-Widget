import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'My App',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          backgroundColor: Colors.blue,
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          elevation: 10.0,
          child: const Icon(Icons.add),
          onPressed: () {
            // action on press button
          },
        ),
        drawer: Drawer(
          child: ListView(
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Text('Application',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
                ),
              ),
              ListTile(
                title: Text('Home'),
                leading: Icon(Icons.home),
              ),
              ListTile(
                title: Text('About Us'),
                leading: Icon(Icons.people),
              )
            ],
          ),),
          bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          fixedColor: Colors.blue,
          items: const[
            BottomNavigationBarItem(label: "Home",icon: Icon(Icons.home)),
            BottomNavigationBarItem(label: "Search",icon: Icon(Icons.search),),
            BottomNavigationBarItem(label: "Account",icon: Icon(Icons.contact_page),),
          ],onTap: (int indexofItem){},),

        body: const Center(
          child: Text(
            "Welcome to My Application",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
