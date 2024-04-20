import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Edit extends StatefulWidget {
   Edit({super.key,required this.name,required this.email,required this.id});
  final dynamic name;
  final dynamic id;
  final dynamic email;

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  var  namec = TextEditingController();
  var emailc = TextEditingController();
  Future<void> update()async{
    final response = await http.post(Uri.parse("https://database20810.000webhostapp.com/FlutterCrude/update.php"),
    body: {
      'id': widget.id,
      'name':namec.text.toString(),
      'email':emailc.text.toString()
    }
    );
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    namec = TextEditingController(text: widget.name);
    emailc = TextEditingController(text: widget.email);
  }
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         TextField(
          controller: namec,
         ),
         TextField(
          controller: emailc,
         )
        ],
      ),
    );
  }
}