import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:mailto/mailto.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  String linkedin_url = 'https://www.linkedin.com/in/tilak-parajiya-15a8a019a';
  String github_url = 'https://github.com/TilakParajiya';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/images/TilakParajiya.jpg'),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Tilak Parajiya',
                style: TextStyle(
                  fontSize: 35,
                  color: Colors.white,
                  fontFamily: 'Pacifico',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 2,
                  color: Colors.teal.shade100,
                  fontFamily: 'PatuaOne',
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal.shade50,
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  title: Text(
                    '+91 703 8182 555',
                    style: TextStyle(
                      color: Colors.teal.shade900,
                      fontFamily: 'PatuaOne',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: _launchMailto,
                child: Card(
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 25.0,
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'tilakparajiya1@gmail.com',
                      style: TextStyle(
                        fontSize: 19.0,
                        fontFamily: 'PatuaOne',
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: _launchGitURL,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        // color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child:Image(image: NetworkImage('https://w7.pngwing.com/pngs/914/758/png-transparent-github-social-media-computer-icons-logo-android-github-logo-computer-wallpaper-banner-thumbnail.png'),width: 40,height: 40,),
                    ),
                  ),
                  InkWell(
                    onTap: _launchLnkdnURL,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child:Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/512/174/174857.png'),width: 40,height: 40,),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _launchGitURL() async => await canLaunchUrlString(github_url)
        ? await launchUrlString(github_url)
        : throw 'Could not launch $github_url';
  void _launchLnkdnURL() async => await canLaunchUrlString(linkedin_url)
        ? await launchUrlString(linkedin_url)
        : throw 'Could not launch $linkedin_url';
  final mailtoLink = Mailto(
    to: ['tilakparajiya1@gmail.com'],
  );
  void _launchMailto() async => await canLaunchUrlString('$mailtoLink')
      ? await launchUrlString('$mailtoLink')
      : throw 'Could not launch $mailtoLink';

}
