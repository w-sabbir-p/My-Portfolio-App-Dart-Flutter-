import 'package:flutter/material.dart';
import 'package:portfolio/Fragment/Skills.dart';
import 'package:portfolio/Fragment/Experiences.dart';
import 'package:portfolio/Fragment/About.dart';
import 'package:portfolio/Fragment/Certificates.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
      theme: ThemeData(
        primaryColor: Colors.black87,
        hintColor: Colors.black87,
        textTheme: const TextTheme(
          headline6: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          subtitle1: TextStyle(
            fontSize: 20,
            color: Colors.black87,
          ),
          subtitle2: TextStyle(
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "My Portfolio",
            style: Theme.of(context).textTheme.headline6!,
          ),
          backgroundColor: Theme.of(context).primaryColor,
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(
                icon: Icon(Icons.person, color: Colors.teal),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.star, color: Colors.teal),
                text: 'Skills',
              ),
              Tab(
                icon: Icon(Icons.work, color: Colors.teal),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.card_membership, color: Colors.teal),
                text: 'Certificates',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black54, // Set the background color of the drawer to black
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  padding: EdgeInsets.all(0),
                  decoration: BoxDecoration(
                    color: Colors.black,
                  ),
                  child: UserAccountsDrawerHeader(
                    accountName: Text(
                      "Wahid Sabbir",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    accountEmail: Text(
                      "wahid15-3975@diu.edu.bd",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                    currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.network(
                        "https://media.licdn.com/dms/image/D5603AQFgIjUpihMMvA/profile-displayphoto-shrink_400_400/0/1691085262924?e=1701302400&v=beta&t=59Or-RojKMYIQQZt5z7qlkPmzu-QZca8OHoH3w6sxpw",
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black54,
                    ),
                  ),
                ),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(
                    'Home',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: () {
                    // Handle Home navigation here
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text(
                    'Settings',
                    style: Theme.of(context).textTheme.subtitle2!.copyWith(color: Colors.white), // Set text color to white
                  ),
                  onTap: () {
                    // Handle Settings navigation here
                  },
                ),
                // Add more ListTile items for other navigation options with white text color
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            About(),
            Skills(),
            Experiences(),
            Certificates(),
          ],
        ),
      ),
    );
  }
}
