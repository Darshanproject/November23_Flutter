// import 'dart:async';
// import 'package:http/http.dart' as http;
// import 'package:flutter/material.dart';

// class AddData extends StatefulWidget {
//   const AddData({super.key});

//   @override
//   State<AddData> createState() => _AddDataState();
// }

// class _AddDataState extends State<AddData> {
//   Future _adddata() async{
//       await http.post(Uri(),body: {
//         'name':name.text,
//         "surname":surname.text,
//         "mobilenumber":MobileNumber.text,
//         "address":address.text
//       });
//   }
//   TextEditingController name = TextEditingController();
//   TextEditingController surname =TextEditingController();
//   TextEditingController MobileNumber = TextEditingController();
//   TextEditingController address = TextEditingController();
//   final _fromkey = GlobalKey<FormState>();
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//       resizeToAvoidBottomInset: false,
//       appBar: AppBar(
//         title: Text("Add data"),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 30),
//         child: Form(
//           key: _fromkey,
//           child: Column(
//             children: [
//               TextFormField(
//                 maxLength: 20,
//                 maxLines: 1,
//                 validator: (value) {
//                   if (name.text == null && name.text.isEmpty) {
//                       return 'Enter proper value';
//                   }else{
//                     return null;
//                   }
//                 },
//                 controller: name,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12)
//                   ),
//                   hintText: "Enter your name "
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 controller: surname,
//                 maxLength: 20,
//                 maxLines: 1,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12)
//                   ),
//                   hintText: "Enter your name "
//                 ),
//               ),
//                SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 maxLength: 10,
//                 maxLines: 1,
//                 controller: MobileNumber,
//                 keyboardType: TextInputType.number,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12)
//                   ),
//                   hintText: "Enter your Mobile Number "
//                 ),
//               ),
//                SizedBox(
//                 height: 20,
//               ),
//               TextFormField(
//                 controller: address,
//                 maxLength: 50,
//                 maxLines: 5,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12)
//                   ),
//                   hintText: "Enter your address "
//                 ),
//               ),
//               Spacer(),
//               SizedBox(
//                 width: double.maxFinite,
//                 child: ElevatedButton(onPressed: () async {
//                   if (_fromkey.currentState!.validate()) {
//                     final namese = name.text;
//                     final surnamese = surname.text;
//                     final mobilenumber = MobileNumber.text;
//                     final addressse = address.text;
//                     await ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Data Added")));
//                   }
//                 }, child: Text("Reg",style: TextStyle(
//                   fontSize: 24,
//                   color: Colors.white
//                 ),),style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.orangeAccent)),),
//               )
//             ],
//           )),
//       ),
//     );
//   }
// }