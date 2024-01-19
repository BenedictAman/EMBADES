import 'package:embades/Pages/add_product_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Embades"),
        ),
      body: ListView.builder(
        itemCount:10 ,
        itemBuilder: (context,index){
          return ListTile(
            title: Text("Title"),
            subtitle: Text("Price : 100"),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: (){
                print("delete");
              },
              ),
            );
        }
        ),
        floatingActionButton:
        FloatingActionButton(
          onPressed: (){
           Get.to(AddProductPage()); 
          },
          child: Icon(Icons.add),
          ) ,
    );
  }
}