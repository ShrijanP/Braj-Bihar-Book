import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newbook/files.dart';
import 'package:newbook/pdf_view.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Braj Bihar Book',style: TextStyle(fontStyle:FontStyle.italic,color:Colors.white),),
        backgroundColor: Colors.blueGrey,
      ),
      body:GridView.builder(
        itemCount: pdf.length,
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 15/14,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          ),
          itemBuilder: (BuildContext, index){
          return GestureDetector(
            onTap: (){
              Get.to(()=>PdfView(index: index));
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Container(
                  color: Colors.black,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 120,
                        width: 110,
                        child:Image.asset('assets/krishna.png',fit: BoxFit.cover,) ,

                      ),
                      SizedBox(height: 5,),
                      Center(
                        child: Text(name[index],textAlign: TextAlign.center,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold ),),
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
          })
    );
  }
}
