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
          bottom: PopupMenuButtonWidget(),
        ),

        bottomNavigationBar: BottomAppBar(
          color: Colors.lightGreen,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Icon(Icons.pause),
              Icon(Icons.stop),
              Icon(Icons.access_time_filled_rounded),
              Padding(
                padding: EdgeInsets.all(32.0),
              ),
            ],
          ),
        ),

      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              const ButtonsWidget(),
              Divider(),
              const ButtonBarWidget(),
              Divider(),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: FloatingActionButton.extended(
        onPressed:(){},
        label: Text('Play'),
        icon: Icon(Icons.play_arrow_rounded),
      ),
    );
  }
}

class PopupMenuButtonWidget extends StatelessWidget implements PreferredSizeWidget{
  const PopupMenuButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen.shade100,
      height:preferredSize.height,
      width: double.infinity,
      child: Center(
        child: PopupMenuButton<TodoMenuItem>(
          icon: Icon(Icons.view_list),
          onSelected: ((valueSelected){
            print('valueSelected: ${valueSelected.title}');
          }),
          itemBuilder: (BuildContext context){
            return foodMenuList.map((TodoMenuItem todoMenuItem) {
              return PopupMenuItem<TodoMenuItem>(
                value: todoMenuItem,
                child: Row(
                  children: <Widget>[
                    Icon(todoMenuItem.icon.icon),
                    Padding(
                      padding: EdgeInsets.all(8.0),

                    ),
                    Text(todoMenuItem.title),
                  ],
                ),
              );
            }).toList();
          },
        ),
      ),
    );
        
  }
  @override
  Size get preferredSize => Size.fromHeight(75.0);
}




class TodoMenuItem {
  final String title;
  final Icon icon;

  TodoMenuItem({required this.title, required this.icon});
}

List<TodoMenuItem> foodMenuList=[
  TodoMenuItem(title: 'Fast food', icon: Icon(Icons.fastfood)),
  TodoMenuItem(title: 'Remind me', icon: Icon(Icons.add_alarm)),
  TodoMenuItem(title: 'Flight', icon: Icon(Icons.flight)),
];

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          children: <Widget>[
            Padding(padding: EdgeInsets.all(16.0)),

          ],
        ),
      ],
    );
  }
}


class ButtonBarWidget extends StatelessWidget {
  const ButtonBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white70,
      child: ButtonBar(
        alignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.map),
          ), 
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.airport_shuttle),
          ),
          IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.brush),
            highlightColor: Colors.purple,
          ),
        ],
      ),
    );
  }
}
