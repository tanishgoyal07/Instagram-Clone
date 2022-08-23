import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage(ImageSource src) async{
  final ImagePicker _imagePicker = ImagePicker();
  XFile? _file = await _imagePicker.pickImage(source: src);

  if(_file != null){
    return await _file.readAsBytes();
  }
  print("No image selected");
}

showSnackBar(String content ,BuildContext context){
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(content)
    )
  );
}