import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About page"),
      ),
      body: Column(
        children: [
          Card(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "This is the App where you csn find shortcuts keys for using it with MicroSoft Word.",
                style: TextStyle(fontSize: 17.0),
              ),
            ),
            
          ),
          RaisedButton(
            color: Colors.teal,
            onPressed:(){
            return Navigator.pop(context);

          },
          child: Text("Go Back",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),),
          
          
          
        ],
      ),
    );
  }
}
