import 'package:flutter/material.dart';
import 'package:newbook/files.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class PdfView extends StatelessWidget {
  PdfView({Key? key, required this.index}) : super(key: key);
  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar (
        backgroundColor: Colors.black,
        title: Text(name[index],style:TextStyle(color:Colors.white,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),),
      ),
      body:SfPdfViewer.asset(pdf[index]),
    );
  }
}
