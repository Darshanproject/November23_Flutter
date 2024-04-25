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
  final String apiUrl = 'https://database20810.000webhostapp.com/FlutterCrude/delete.php';

Future<void> deleteData(BuildContext context, String id) async {
  try {
    var response = await http.delete(
      Uri.parse('$apiUrl/$id'),
      // headers: <String, String>{
      //   'Content-Type': 'application/json; charset=UTF-8',
      // },
    );

    if (response.statusCode == 200) {
      // Item deleted successfully
      Text('Item deleted successfully');
    } else {
      // Error occurred while deleting item
      Text('Failed to delete item. Error: ${response.statusCode}');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to delete item. Error: ${response.statusCode}'),
        ),
      );
    }
  } catch (e) {
    // Error occurred during HTTP request
    print('Error deleting item: $e');
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Error deleting item: $e',style: TextStyle(fontSize: 24),),duration: Duration(seconds: 12),
      ),
    );
  }
}

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
//     Future<void> delete(String id) async {
//   try {
//     final response = await http.delete(
//       Uri.parse("https://database20810.000webhostapp.com/FlutterCrude/delete.php"),
//       body: jsonEncode({'id': id.toString()}),
//     );
//     if (response.statusCode == 200) {
//       ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Deleted")));
//       // Refresh the data after deletion
//       setState(() {
//         data = fetchData();
//       });
//     } else {
//       throw Exception('Failed to delete data');
//     }
//   } catch (e) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(content: Text('Error deleting data: $e',style: TextStyle(fontSize: 24,color: Colors.black),),backgroundColor: Colors.white,duration: Duration(seconds: 12),));
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Failed to delete data")));
//   }
// }

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Api Crud"),
      ),
      body: FutureBuilder <List<Map<String,dynamic>>>(future: data, builder: (context,snapshot){
       if (snapshot.data == ConnectionState.waiting) {
          return CircularProgressIndicator();
       }else if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString(),style: TextStyle(fontSize: 24),));
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
                        ElevatedButton(onPressed: (){
                          deleteData(context, item['id'].toString());
                        }, child: Text("Delete"))
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






/*
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String apiUrl = 'YOUR_API_URL_HERE';

  Future<void> deleteData(String id) async {
    var response = await http.delete(
      Uri.parse('$apiUrl/$id'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      // Item deleted successfully
      print('Item deleted successfully');
    } else {
      // Error occurred while deleting item
      print('Failed to delete item. Error: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Delete Method Demo'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Call delete method here, pass the ID of the item to be deleted
            deleteData('ITEM_ID_TO_DELETE');
          },
          child: Text('Delete Item'),
        ),
      ),
    );
  }
}
*/