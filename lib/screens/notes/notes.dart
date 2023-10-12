import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justus/reusables/buttons.dart';

class NotesPage extends StatefulWidget {
  NotesPage({Key? key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  bool showSyncedNotes = false;
  bool showNonSyncedNotes = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text("Notebook",
                  style: TextStyle(fontSize: 35, fontFamily: 'Poppins')),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 900,
              height: 230,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Notebookbutton()
                      .Notebookbuttons("First Note", "i can do it...");
                },
              ),
            ),
            Divider(
              thickness: 0.5,
            ),
            Row(
              children: [
                CupertinoButton(
                  onPressed: () {
                    setState(() {
                      showSyncedNotes = true;
                      showNonSyncedNotes = false;
                    });
                  },
                  child: Text("Synced Notes",
                      style: TextStyle(fontSize: 20, fontFamily: 'Poppins')),
                ),
                CupertinoButton(
                  onPressed: () {
                    setState(() {
                      showSyncedNotes = false;
                      showNonSyncedNotes = true;
                    });
                  },
                  child: Text("Non Synced Notes",
                      style: TextStyle(fontSize: 20, fontFamily: 'Poppins')),
                ),
              ],
            ),
            if (showSyncedNotes) ..._buildSyncedNotes(),
            if (showNonSyncedNotes) ..._buildNonSyncedNotes(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildSyncedNotes() {
    return [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            notebooknote,
            notebooknote,
            notebooknote
          ],
        ),
      ),
      // Add more synced notes here
    ];
  }

  List<Widget> _buildNonSyncedNotes() {
    return [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            notebooknote,
            notebooknote,
          ],
        ),
      ),
      // Add more non-synced notes here
    ];
  }
}
