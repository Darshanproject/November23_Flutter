import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:myapi/Crud/add.dart';
import 'package:http/http.dart' as http;
import 'package:myapi/Crud/edit.dart';


class View_Screen extends StatefulWidget {
  const View_Screen({super.key});

  @override
  State<View_Screen> createState() => _View_ScreenState();
}

class _View_ScreenState extends State<View_Screen> {
    late  Future<List<Map<String,dynamic>>> data; 
    Future <List<Map<String,dynamic>>> fetchData() async {
    final response = await http.get(Uri.parse("https://database20810.000webhostapp.com/FlutterCrude/view.php"));
    if (response.statusCode == 200) {
     final List<dynamic> jsondata =  jsonDecode(response.body);
    final List<Map<String,dynamic>> dataresponse = jsondata.cast<Map<String,dynamic>>();   
    return dataresponse; 
    }else{
      throw Exception('Failed to Load data');
    }
  }
  @override
  

  
  void initState() {
    super.initState();
    data = fetchData();
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Api Crud"),
      ),
      body: FutureBuilder <List<Map<String,dynamic>>>(future: data, builder: (context,snapshot){
       if (snapshot.data == ConnectionState.waiting) {
          return CircularProgressIndicator();
       }else if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
       }else if(snapshot.hasData){
        return ListView.builder(
          itemCount: snapshot.data!.length,
          itemBuilder: (context ,int index){
            final  item = snapshot.data![index];
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Name : ${item['name'] + '  ' + item['surname']}"),
                        
                        Text("Email : ${item['email']}")
                      ],
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Edit(data: item[index], index: index)));
                        }, icon: Icon(Icons.edit,color: Colors.green ,)),
                        IconButton(onPressed: (){
                          
delete() async {
  http.post(Uri.parse("https://database20810.000webhostapp.com/FlutterCrude/delete.php"),body: {
    'id': item[index]
  });

}
                        }, icon: Icon(Icons.delete,color: Colors.red ,)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
       }
      return Text("No data found");
      }
      ),
      backgroundColor: Colors.amber,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>AddData()));

      },child: Icon(Icons.add),),
    );
  }
}
