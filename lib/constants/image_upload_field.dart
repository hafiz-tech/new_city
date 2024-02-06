import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PictureUploadForm extends StatefulWidget {
  @override
  _PictureUploadFormState createState() => _PictureUploadFormState();
}

class _PictureUploadFormState extends State<PictureUploadForm> {
  File? _imageFile;
  final picker = ImagePicker();

  Future<void> _getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (pickedFile != null) {
        _imageFile = File(pickedFile.path);
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          _imageFile == null
              ? const Text('No image selected. ', style: TextStyle(
            fontSize: 18,
            fontFamily: 'Quicksand-Regular',
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),)
              : Image.file(_imageFile!),
          const SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: _getImageFromGallery,
            child: const Text('Select Picture', style: TextStyle(
              fontSize: 18,
              fontFamily: 'Quicksand-Regular',
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
            ),
          ),
          /*ElevatedButton(
            onPressed: () {
              // Handle uploading of the picture to a server or perform other operations
              // with the _imageFile
              if (_imageFile != null) {
                print('Picture uploaded: ${_imageFile!.path}');
              } else {
                print('No picture selected.');
              }
            },
            child: Text('Upload Picture'),
          ),*/
        ],
      ),
    );
  }
}

