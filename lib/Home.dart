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
        Container(
          height: 100.0,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(10.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.white,
                Colors.lightGreenAccent,
              ]
            ),
            boxShadow: [
              BoxShadow(
              color: Colors.lightGreen,
              blurRadius: 10.0,
              offset: Offset(0.0,10.0),
               ),
            ]
          ),
          child: Center(
            child: RichText(
              text: TextSpan(
              text: 'Rohan ',
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.normal,
                  fontSize: 25.0,
                  decorationColor: Colors.lightBlue,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.dashed,
                ),
                children:<TextSpan>[
                  TextSpan(
                    text: 'Sunar',

                  ),
                  TextSpan(
                    text: '  Mobile',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]
            ),
            ),
            ),
          ),
      ],
    );
  }
}
