// ignore_for_file: library_private_types_in_public_api, prefer_const_constructors, prefer_typing_uninitialized_variables, prefer_const_constructors_in_immutables, unused_label, file_names, unnecessary_import
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List notes = [
    {"note": "لدي موعد الساعة العاشرة مساء"},
    {"note": "لدي موعد الساعة التاسعة مساء "},
    {"note": "لدي موعد الساعة السابعة مساء"},
    {"note": "لدي موعد الساعة السادسة مساء"},
    {"note": "لدي موعد الساعة الخامسة مساء"},
    {"note": "لدي موعد الساعة الرابعة مساء"},
    {"note": "لدي موعد الساعة الثالثة مساء"},
    {"note": "لدي موعد الساعة العاشرة مساء"},
    {"note": "لدي موعد الساعة العاشرة مساء"}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Homepage "),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            Navigator.of(context).pushNamed("addnotes");
          },
        ),
        // ignore: avoid_unnecessary_containers
        body: Container(
            child: ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, i) {
                  return Dismissible(
                      key: Key("$i"),
                      child: ListNotes(
                        notes: notes[i],
                      ));
                })));
  }
}

class ListNotes extends StatelessWidget {
  final notes;
// ignore: use_key_in_widget_constructors
  ListNotes({this.notes});
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        Expanded(
            flex: 1,
            child: Image.asset(
              "images/3.png",
              fit: BoxFit.fill,
              height: 100,
            )),
        Expanded(
          flex: 2,
          child: ListTile(
              // ignore: dead_code
              title: Text("Title"),
              subtitle: Text("${notes['note']}"),
              trailing: IconButton(onPressed: () {}, icon: Icon(Icons.edit))),
        )
      ],
    ));
  }
}
