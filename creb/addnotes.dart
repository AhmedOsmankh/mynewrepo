// ignore_for_file: unused_import, prefer_const_constructors, no_logic_in_create_state, library_private_types_in_public_api, avoid_unnecessary_containers, avoid_web_libraries_in_flutter, prefer_const_literals_to_create_immutables, non_constant_identifier_names, prefer_equal_for_default_values, camel_case_types, file_names
//import 'dart:html';

import 'package:flutter/material.dart';

class addnotes extends StatefulWidget {
  const addnotes({Key? key}) : super(key: key);
  @override
  _addnotesState createState() => _addnotesState();
}

class _addnotesState extends State<addnotes> {
  get x => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("addnote"),
        ),
        body: Container(
          child: Column(children: [
            Form(
                child: Column(
              children: [
                TextFormField(
                  maxLength: 30,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: "Title note",
                      prefixIcon: Icon(Icons.note)),
                ),
                TextFormField(
                  minLines: 1,
                  maxLines: 3,
                  maxLength: 200,
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      labelText: " note",
                      prefixIcon: Icon(Icons.note)),
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {
                    ShowButtomSheet();
                  },
                  textColor: Colors.white,
                  child: Text("add image for note"),
                ),
                // ignore: deprecated_member_use
                RaisedButton(
                  onPressed: () {},
                  textColor: Colors.white,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  child: Text(
                    "add note",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                )
              ],
            ))
          ]),
        ));
  }

  ShowButtomSheet() {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: EdgeInsets.all(20),
            height: 170,
            child: Column(children: [
              Text(
                "please chose style",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Icon(
                      Icons.photo_outlined,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "From galary ",
                      style: TextStyle(fontSize: 15),
                    )
                  ]),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(children: [
                    Icon(
                      Icons.camera,
                      size: 30,
                    ),
                    SizedBox(width: 20),
                    Text(
                      "From camera ",
                      style: TextStyle(fontSize: 15),
                    )
                  ]),
                ),
              ),
            ]),
          );
        });
  }
}
