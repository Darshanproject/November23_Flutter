import 'package:flutter/material.dart';
import 'package:myapp/List.dart';

class BottomAdvance extends StatefulWidget {
  const BottomAdvance({super.key});

  @override
  State<BottomAdvance> createState() => _BottomAdvanceState();
}

class _BottomAdvanceState extends State<BottomAdvance> {
  int _SelectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            _SelectedIndex = index;
          });
      },
      indicatorColor: Colors.amber,
      selectedIndex: _SelectedIndex,
      destinations: <Widget>[
        NavigationDestination(icon: Badge(child: Icon(Icons.home),), label: "Home"),
        NavigationDestination(icon: Badge(child: Icon(Icons.chat),), label: "Chat"),
        NavigationDestination(icon: Badge(child: Icon(Icons.call),), label: "Calls"),
      ],
      ),
      body: <Widget>[
        Card(elevation: 10,
        shadowColor: Colors.grey,
        child: Text("Home Page"),
        
        ),
        Padding(padding: EdgeInsets.all(5),
        child: Column(
          children: [
            Card(
              child: ListTile(
                leading: Icon(Icons.notification_add_sharp),
                title:Text("Notifaction 1"),
                subtitle: Text("This is Notifaction"),
              ),
            ),
            Card(
              child: ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text("Alaram"),
                subtitle: Text("Set Alaram"),
              ),
            ),
                        Card(
              child: ListTile(
                leading: Icon(Icons.access_alarm),
                title: Text("Clock"),
                subtitle: Text("Set Clock"),
              ),
            ),

         
          ],
        ),),
       ListView.builder(
        reverse: true,
        itemCount: 2,
        itemBuilder: (BuildContext context,int index){
              if (index ==0) {
                  return Align(
                    alignment: Alignment.bottomLeft,
                    child: Text("Hello"),
                  );
              }
              return Align(
                alignment: Alignment.bottomRight,
                child: Text("Ohh Hello"),
              );
            }),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Center(
                  child: Text("Hello user"),
                ),
              ),
            )
      ][_SelectedIndex],
    );
  }
}