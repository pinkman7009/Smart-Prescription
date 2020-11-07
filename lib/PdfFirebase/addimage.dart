import 'dart:io';

import 'package:file_upload/PdfFirebase/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:image_picker/image_picker.dart';
import 'package:image_pickers/image_pickers.dart';
import 'constants.dart';
import 'home_page.dart';
//import 'package:image_pickers/image_pickers.dart';
import 'package:path/path.dart';

//import 'package:file_picker/file_picker.dart';

class Image_page extends StatefulWidget {
  @override
  _Image_pageState createState() => _Image_pageState();
}

class _Image_pageState extends State<Image_page> {
  @override
  File _image;
  final picker = ImagePicker();
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(115, 50, 115, 30),
              child: Expanded(
                child: Image.asset('images/add_image.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(20, 0, 40, 0),
              child: Text(
                'Add Images  to the prescription!',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(25, 10, 40, 0),
              child: Text(
                '-Such as injuries ,medical reports or any kind of reference',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xffA6ACBE),
                ),
              ),
            ),
            GestureDetector(
              onTap: getImage,
              child: Container(
                //color: k_button_color,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0x1f976BF8),
                    border: Border.all(
                      width: 3,
                      color: Color(0xffAF92F0),
                    )),
                child: Center(
                  child: Text(
                    'Take a photo!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: getImagefromGallery,
              child: Container(
                //color: k_button_color,
                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                width: 340,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                    color: Color(0x1f976BF8),
                    border: Border.all(
                      width: 3,
                      color: Color(0xffAF92F0),
                    )),
                child: Center(
                  child: Text(
                    'Add Images from Gallery!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(15.0))),
                  onPressed: () {
                    reportView(context, "heading", _image.path);
                  },
                  // textColor: Colors.white,
                  color: k_button_color,
                  padding: EdgeInsets.fromLTRB(100, 10, 100, 10),
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  Future getImagefromGallery() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }
}
