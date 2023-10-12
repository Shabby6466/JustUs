import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';



class NotesGrid extends StatefulWidget {
  @override
  _NotesGridState createState() => _NotesGridState();
}

class _NotesGridState extends State<NotesGrid> {
  List<Note> notes = []; // List to store notes

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 2, // Number of notes in each row
      itemCount: notes.length,
      itemBuilder: (BuildContext context, int index) {
        // Build the NoteContainer for each note
        return NoteContainer(
          note: notes[index],
        );
      },
      staggeredTileBuilder: (int index) {
        // Define the size of each note container (you can adjust this as needed)
        return StaggeredTile.fit(1);
      },
    );
  }
}
class Note {
  final String title;
  final String content;

  Note({required this.title, required this.content});
}


class NoteContainer extends StatelessWidget {
  final Note note;

  NoteContainer({required this.note});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Column(
        children: [
          Text(note.title, style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)),
          SizedBox(height: 8.0),
          Text(note.content),
        ],
      ),
    );
  }
}
