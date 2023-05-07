// ignore_for_file: library_private_types_in_public_api, deprecated_member_use, prefer_const_literals_to_create_immutables, prefer_const_constructors, override_on_non_overriding_member, unnecessary_null_comparison, non_constant_identifier_names

import 'dart:io';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';

// import 'package:path/path.dart';

class Sacnning extends StatefulWidget {
  const Sacnning({Key? key}) : super(key: key);

  @override
  State<Sacnning> createState() => _SacnningState();
}

class _SacnningState extends State<Sacnning> {
  @override
  File? _file;
  File? _gallary;
  Future Pickercamera() async {
    final myfile = await ImagePicker().getImage(source: ImageSource.camera);
    setState(() {
      _file = File(myfile!.path);
    });
  }

  Future Pickercamera2() async {
    final myfile = await ImagePicker().getImage(source: ImageSource.gallery);

    setState(() {
      _gallary = File(myfile!.path);
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: (Color.fromARGB(255,0,128,137)),
          title: Text("Scanning"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              IconButton(
                onPressed: Pickercamera,
                icon: Icon(Icons.center_focus_strong_sharp),
                iconSize: 80,
                tooltip: 'Pic with Camera',
              ),
              OutlinedButton(
                onPressed: Pickercamera,
                child: Text('Pic using Camera '),
              ),
              Center(
                child: _file == null ? Text("") : Image.file(_file!),
              ),
              Container(
                child: IconButton(
                  onPressed: Pickercamera2,
                  icon: Icon(Icons.image),
                  iconSize: 70,
                  tooltip: 'Gallary',
                ),
              ),
              OutlinedButton(
                onPressed: Pickercamera2,
                child: Text('Select From Gallery'),
              ),
              Center(
                child: _file == null ? Text("") : Image.file(_file!),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                        Color.fromARGB(255,0,128,137)),
                    padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(horizontal: 30, vertical: 13)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(27))),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/result");
                  },
                  child: Text("Result")),
              Center(
                child: _gallary == null
                    ? Text("",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22))
                    : Image.file(_gallary!),
              )
            ],
          ),
        ));
  }
}
