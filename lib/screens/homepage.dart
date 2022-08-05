import 'package:flutter/material.dart';
import '../data/data.dart';
import './aboutpage.dart';
import './about_me.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share_plus/share_plus.dart';

class HomePage extends StatelessWidget {
  // const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),
              child: Container(
                color: Colors.tealAccent,
                child: Center(
                  child: Text("MS Guide",style: TextStyle(color: Colors.black54,fontSize: 30.0),),
                ),
              ),
            ),
            ListTile(
              onTap: (){
                return Navigator.pop(context);
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AboutPage();
                }));
              },
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
            ListTile(
              onTap: (){
                
                launch("https://pub.dev/packages/url_launcher/install");
              },
              leading: Icon(Icons.star),
              title: Text("Rate"),
            ),
            ListTile(
              onTap: (){
                
                Share.share("Hi,download this app from https://pub.dev/packages/url_launcher/install");
              },
              
              leading: Icon(Icons.share),
              title: Text("Share"),
            ),
            ListTile(
              onTap: (){
                
                Navigator.push(context, MaterialPageRoute(builder: (context){
                  return AboutMe();
                }));
              },
              
              leading: Icon(Icons.people),
              title: Text("About Me"),
            ),
          
          

            
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("MS Word App"),
        actions: [
          IconButton(
            icon: Icon(Icons.info_outline),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return AboutPage();
                }),
              );
            },
          ),
        ],
      ),
      body: ListView.separated(
        separatorBuilder: ((context, index) {
          return Divider(
            thickness: 2.0,
          );
        }),
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text(
                "${index + 1}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
              ),
              backgroundColor: Colors.tealAccent,
              radius: 22.0,
            ),
            title: Text(data[index]['key']),
            subtitle: Text(data[index]['use']),
          );
        },
      ),
    );
  }
}
