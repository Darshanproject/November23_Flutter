import 'package:flutter/material.dart';
import 'package:todo/Models/note_Model.dart';

class NoteWidget extends StatelessWidget {
  final Note note;
  final VoidCallback onTap;
  final VoidCallback onLongPress;
  final int? index;
  const NoteWidget({super.key,required this.note,required this.onTap,required this.onLongPress,this.index});

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      onLongPress: onLongPress,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          color: index!.isEven?Colors.amber:Colors.blueGrey[200],
          child: Column(
            children: [
              Text(note.title,style: TextStyle(fontSize: 28,color: Colors.black,fontWeight: FontWeight.bold),),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  thickness: 2,
                  color: Colors.black,
                ),
              ),
              Text(note.description,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.w200),)
            ],
          ),
        ),
      ),
    );
  }
}