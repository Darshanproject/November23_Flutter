import 'package:flutter/material.dart';

class Tabbar_Screen extends StatefulWidget {
  const Tabbar_Screen({super.key});

  @override
  State<Tabbar_Screen> createState() => _Tabbar_ScreenState();
}

class _Tabbar_ScreenState extends State<Tabbar_Screen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(156, 39, 176, 1),
          title: Text("Tabbar Example",style: TextStyle(color: Colors.white),),
          bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.home,color: Colors.white,),),
              Tab(child: Text("Chats",style: TextStyle(color: Colors.white),)),
              Tab(child: Text("Call",style: TextStyle(color: Colors.white),)),
          ])
        ),
        body: TabBarView(children:  
        [
          Expanded(
            
            child: Card(
              child: Text("This is your home Screen"),
            ),
          ),
          Expanded(
            
            child: Card(
              child: Text("This is your Chat Screen"),
            ),
          ),
          Expanded(
            
            child: Card(
              child: Text("This is your Calling Screen"),
            ),
          ),
        ]),
      ),
    );
  }
}