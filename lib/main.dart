import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



void main() =>runApp(MaterialApp(
  home:NinjaCard(),

));
class NinjaCard extends StatefulWidget {

  @override
  _NinjaCardState createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title:Text("Ninja ID",

        ),
        centerTitle: true,
        backgroundColor: Colors.grey[800],
        elevation: 0.0,
      ),

      body: Padding(

        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0,0.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
            backgroundImage:AssetImage('assets/rifat.jpg') ,
            radius: 50.0,
              ),
            ),
            Divider(
              height: 95,
            ),
            Text(
                "Name",

            style: TextStyle(

             color: Colors.grey,
              letterSpacing: 2.0

            ),

            ),
            SizedBox(height: 10.00),
            Text("Chun li",

            style:TextStyle (
              color: Colors.amber,
              fontSize:28.0,
              fontWeight: FontWeight.bold
            ),

            ),
            SizedBox(height: 10.0),
            Text(
              "Ninja Level",
              style: TextStyle(
                  color: Colors.grey,
                  letterSpacing: 2.0

              ),

            ),
            SizedBox(height: 10.0),
            Text('$level',

              style:TextStyle (
                  color: Colors.amber,
                  fontSize:28.0,
                  fontWeight: FontWeight.bold
              ),

            ),

        SizedBox(height: 10.0),
       Row(
         children: <Widget>[
           Icon(
             Icons.email,
             color: Colors.white70,
           ),
           SizedBox(height: 10.00),
           Text(
            "mrifat152@bscse.uiu.ac.bd",
            style: TextStyle(
              color: Colors.deepPurple,
              letterSpacing:2.0,
              fontWeight: FontWeight.bold,
            ),
           )


         ],



      ),

    ],
    ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            level+=1;
          });
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}



