import 'package:flutter/material.dart';
import 'package:portfolio/Fragment/Skills.dart';
import 'package:portfolio/Fragment/Experiences.dart';
import 'package:portfolio/Fragment/About.dart';
import 'package:portfolio/Fragment/Certificates.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
                icon: Icon(Icons.person, color: Colors.tealAccent),
                text: 'About',
              ),
              Tab(
                icon: Icon(Icons.star, color: Colors.tealAccent),
                text: 'Skills',
              ),
              Tab(
                icon: Icon(Icons.work, color: Colors.tealAccent),
                text: 'Experiences',
              ),
              Tab(
                icon: Icon(Icons.card_membership, color: Colors.tealAccent),
                text: 'Certificates',
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: Container(
            color: Colors.black54,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  decoration: const BoxDecoration(
                    color: Colors.black54,
                  ),
                  child: UserAccountsDrawerHeader(
                    accountName: const Text(
                      "Wahid Sabbir",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    accountEmail: const Text(
                      "wahid15-3975@diu.edu.bd",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    currentAccountPicture: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
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
                  leading: Icon(
                    Icons.home,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {

                  },
                ),

                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {

                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'Gmail',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://mail.google.com/mail/u/0/#inbox');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.link,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'LinkedIn',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://www.linkedin.com/in/wahidsabbir/');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.facebook,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'Facebook',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://www.facebook.com/w.sabbir.p');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.camera_enhance_outlined,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'Instagram',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://www.instagram.com/w.sabbir.p/');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_tree_sharp,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'Github',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://github.com/w-sabbir-p');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.note_alt_sharp,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'Get CV',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                    launch('https://drive.google.com/file/d/17MmjgrpJe5J0ekwBRC1XscZ-lnEhb0LK/view?usp=drivesdk');
                  },
                ),
                ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Colors.tealAccent,
                  ),
                  title: Text(
                    'Logout',
                    style: TextStyle(
                      color: Colors.white, fontSize: 18,
                    ),
                  ),
                  onTap: () {
                  },
                ),
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

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw "Could not launch $url";
    }
  }
}

