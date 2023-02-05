// TODO Implement this library.
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          leading: IconButton(
            icon:Icon(Icons.menu),
            onPressed:(){},
          ),
          actions:<Widget>[
            IconButton(
              icon:Icon(Icons.search),
              onPressed: (){},
            ),
            IconButton(
              icon: Icon(Icons.more_vert) ,
              onPressed: (){},
            ),
          ],
            flexibleSpace: const SafeArea(
              child: Icon(
                Icons.photo_camera,
                size: 50.0,
                color: Colors.black,
                ),
              ),
          bottom: PreferredSize(
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 75.0,
              width: double.infinity,
              child:Center(
                child:Text('Bottom'),
              ),
            ),
            preferredSize: Size.fromHeight(75.0),
          ),

        ),

    body: Container(),

    );
  }
}
