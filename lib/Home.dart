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
          /*bottom: PreferredSize(
            child: Container(
              color: Colors.deepPurpleAccent,
              height: 75.0,
              width: double.infinity,
              child:Center(
                child:Text('Bottom'),
              ),
            ),
            preferredSize: Size.fromHeight(75.0),
          ),*/
          
        ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const ContainerWithBoxContainetWidget(),
                ],
            ),
          ),
        ),
      ),

    );
  }
}

class ContainerWithBoxContainetWidget extends StatelessWidget {
  const ContainerWithBoxContainetWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Text('Column 1'),
            Divider(),
            Text('Column 2'),
            Divider(),
            Text('Column 3'),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Text('Row 1'),
                Text('Row 2'),
                Text('Row 3'),
              ],

            ),
          ],
        ),
        ],
      );
    }
  }

