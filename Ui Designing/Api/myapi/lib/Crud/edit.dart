
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';
// import 'package:myapi/Crud/view.dart';
// import 'package:velocity_x/velocity_x.dart';

// class Edit extends StatefulWidget {
//    Edit({super.key,required this.data,required this.index});
//   // final String email;
//   // final String password;
//   final List<dynamic> data;
//   final int index;
//   @override
//   State<Edit> createState() => _EditState();
// }

// class _EditState extends State<Edit> {
  
//   late TextEditingController   passwordc = TextEditingController();
//    late TextEditingController emialc = TextEditingController();
//   void editdata() async {
//     final response = await
//     http.post(Uri.parse("https://database20810.000webhostapp.com/FlutterCrude/update.php"),body: {
//       'id':widget.index,
//       'email':widget.data[widget.index]['email'],
//       'password':widget.data[widget.index]['password']
//     });
//     if (response.statusCode == 200) {
//         print("Ok--------------------------------");
//     }else{
//       print("------------------------------------${response.statusCode}");
//     }
//   }
//   @override
//   void initState() {
//     super.initState();
//     emialc = TextEditingController(text: widget.data[widget.index]['email']);
//     passwordc = TextEditingController(text: widget.data[widget.index]['password']);
//   }
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       appBar: AppBar(),
//       body: SingleChildScrollView(
//         child: SafeArea(child: Container(
//           height: context.screenHeight,
//           child: Form(child: Column(
//             children: [

//               TextFormField(
//                 controller: emialc,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12)
//                   ),
//                   hintText: "Email"
//                 ),
//               ),
//               10.heightBox,
//               TextFormField(
//                 controller: passwordc,
//                 obscureText: true,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12)
//                   ),
//                   hintText: "Password"
//                 ),
//               ),
//               Spacer(),
//               MaterialButton(onPressed: ()  {
                
//                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>View_Screen()));
//               },child: Text("Add Data"),)
//             ],
//           ).box.height(context.screenHeight / 1.9).width(context.screenWidth - 80).padding(EdgeInsets.symmetric(horizontal: 30,vertical: 40)).clip(Clip.antiAlias).rounded.makeCentered()
//           ),
//         )),
//       ),
//     );
//   }
// }
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:myapi/Crud/view.dart';
import 'package:velocity_x/velocity_x.dart';

class Edit extends StatefulWidget {
  Edit({Key? key, required this.data, required this.index}) : super(key: key);

  final List<dynamic> data;
  final int index;

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  late TextEditingController passwordc;
  late TextEditingController emialc;

  // @override
  // void initState() {
  //   super.initState();
  //   emialc = TextEditingController(text: widget.data[widget.index]['email']);
  //   passwordc = TextEditingController(text: widget.data[widget.index]['password']);
  // }

  // void editdata() async {
  //   final response = await http.post(
  //     Uri.parse("https://database20810.000webhostapp.com/FlutterCrude/update.php"),
  //     body: {
  //       'id': widget.data[widget.index]['id'].toString(), // Assuming there's an 'id' field in your data
  //       'email': emialc.text,
  //       'password': passwordc.text,
  //     },
  //   );
  //   if (response.statusCode == 200) {
  //     print("Data updated successfully");
  //     // Optionally, navigate back to the previous screen or perform any other actions upon successful update
  //   } else {
  //     print("Failed to update data: ${response.statusCode}");
  //     // Handle error
  //   }
  // }
@override
void initState() {
  super.initState();
  if (widget.data.isNotEmpty && widget.index >= 0 && widget.index < widget.data.length) {
    emialc = TextEditingController(text: widget.data[widget.index]['email']);
    passwordc = TextEditingController(text: widget.data[widget.index]['password']);
  } else {
    // Handle invalid index or empty data list
    print("Invalid index or empty data list");
  }
  void editdata() async {
  print("Index: ${widget.index}");
  print("ID: ${widget.data[widget.index]['id']}");
  print("Email: ${emialc.text}");
  print("Password: ${passwordc.text}");
  // Rest of the method...
}
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            height: context.screenHeight,
            child: Form(
              child: Column(
                children: [
                  TextFormField(
                    controller: emialc,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Email",
                    ),
                  ),
                  10.heightBox,
                  TextFormField(
                    controller: passwordc,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      hintText: "Password",
                    ),
                  ),
                  Spacer(),
                  MaterialButton(
                    // onPressed: editdata,
                    onPressed: (){},
                    child: Text("Update Data"),
                  ),
                ],
              ).box
                  .height(context.screenHeight / 1.9)
                  .width(context.screenWidth - 80)
                  .padding(EdgeInsets.symmetric(horizontal: 30, vertical: 40))
                  .clip(Clip.antiAlias)
                  .rounded
                  .makeCentered(),
            ),
          ),
        ),
      ),
    );
  }
}
