// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justus/reusables/buttons.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({Key? key}) : super(key: key);

  @override
  _NotesPageState createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  bool showSyncedNotes = true;
  bool showNonSyncedNotes = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text("Notebook",
                    style: TextStyle(fontSize: 35, fontFamily: 'Poppins')),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 900,
                height: 205,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Notebookbutton()
                        .Notebookbuttons("First Note", "i can do it...");
                  },
                ),
              ),
              const Divider(
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
                    child: const Text("Synced Notes",
                        style: TextStyle(fontSize: 20, fontFamily: 'Poppins')),
                  ),
                  CupertinoButton(
                    onPressed: () {
                      setState(() {
                        showSyncedNotes = false;
                        showNonSyncedNotes = true;
                      });
                    },
                    child: const Text("Non Synced Notes",
                        style: TextStyle(fontSize: 20, fontFamily: 'Poppins')),
                  ),
                ],
              ),
              if (showSyncedNotes) ..._buildSyncedNotes(),
              if (showNonSyncedNotes) ..._buildNonSyncedNotes(),
            ],
          ),
          floatingActionButton: FloatingActionButton.extended(
            elevation: 0.2,
            label: const Text("Add Note",
                style: TextStyle(color: Colors.black, fontFamily: "Poppins")),
            onPressed: () {},
            icon: const Icon(Icons.add, color: Colors.black),
            backgroundColor: Colors.red[100],
          )),
    );
  }

  List<Widget> _buildSyncedNotes() {
    return [
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
        child: Row(
          children: [notebooknote, notebooknote, notebooknote],
        ),
      ),
      // Add more synced notes here
    ];
  }

  List<Widget> _buildNonSyncedNotes() {
    return [
      Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 5),
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
