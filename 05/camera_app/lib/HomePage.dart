import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  File _image;
  Future<void> _opendialogBox() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          title: Text('Choose Options'),
          backgroundColor: Colors.teal,
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                GestureDetector(
                  onTap: openCamera,
                  
                  child: Container(
                    color: Colors.red,
                    child: Text('openCamera'),
                  ),
                ),
                 GestureDetector(
                  onTap: openGalery,
                  
                  child: Container(
                    color: Colors.yellow,
                    child: Text('openGalery'),
                  ),
                )
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Regret'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future openCamera() async {
    var image = await ImagePicker.pickImage(source: ImageSource.camera);

    setState(() {
      _image = image;
    });
  }

  Future openGalery() async {
    var galleryimage = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = galleryimage;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Camera"),
      ),
      body: Container(
        child: _image == null ? Text("No Image Uploaded") : Image.file(_image),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_a_photo),
        onPressed: _opendialogBox,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
