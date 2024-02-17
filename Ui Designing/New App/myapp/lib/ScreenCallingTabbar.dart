import 'package:flutter/material.dart';
import 'package:myapp/List.dart';
import 'package:myapp/Screen.dart';
import 'package:myapp/View/Auth/Login.dart';

class Screen_Tabbar extends StatefulWidget {
  const Screen_Tabbar({super.key});

  @override
  State<Screen_Tabbar> createState() => _Screen_TabbarState();
}

class _Screen_TabbarState extends State<Screen_Tabbar> {
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
          MyList_Screen(),
          Login_Screen(),
          Screen_home()
        ]),
      ),
    );
  }
}