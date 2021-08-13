import 'package:flutter/material.dart';

class ContactPage extends StatefulWidget {
  // const ContactPage({ Key? key }) : super(key: key);

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  @override
  Widget build(BuildContext context) {
    return ListView (
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("Develop by", style: TextStyle(fontSize: 30, fontFamily: "Kanit"),),
                SizedBox(height: 30,),
                Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(width: 10,),
                    Text("Bank", style: TextStyle(fontSize: 20, color: Colors.blue,fontFamily: "Kanit"),),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Icon(Icons.phone),
                    SizedBox(width: 10,),
                    Text("0890123456", style: TextStyle(fontSize: 20, color: Colors.red,fontFamily: "Kanit"),),
                  ],
                ),
              ]
            ),
          )
        )
      ]
    );
  }
}