import 'package:embades/widgets/drop_dopwn_button.dart';
import 'package:flutter/material.dart';

class AddProductPage extends StatelessWidget {
  const AddProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Add Product"),),
      body:  SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(10),
          width:double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Add New Product",
                style: TextStyle(
                  fontSize: 30,color: Colors.indigoAccent,
                  fontWeight: FontWeight.bold,
                  ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      label: const Text("Product Name"),
                      hintText: "Enter Your Product Name"
                    ),
                    ),
                    const SizedBox(height: 10),
                     TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      label: const Text("Product Discription"),
                      hintText: "Enter Your Product Discription"
                    ),
                    maxLines: 4,
                    ),
                    const SizedBox(height: 10),
                     TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      label: const Text("Image Url"),
                      hintText: "Enter Your Image Url"
                    ),
                    ),
                    const SizedBox(height: 10),
                     TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                      ),
                      label: const Text("Product Price"),
                      hintText: "Enter Your Product Price"
                    ),
                    ),
                     const SizedBox(height: 10),
                     Row(
                      children: [
                        Flexible(
                          child: DropDownButton(
                            items: ["Cate1","Cate2","Cate3","Cate4"],
                            selectedItemText:"Catogor" ,
                            onSelected:(selectedValue){
                              print(selectedValue);
                            } ,
                            ),
                            ),
                        Flexible(
                          child: DropDownButton(
                            items: ["Brand1","Brand2","Brand3","Brand4"],
                            selectedItemText: "Brand",
                            onSelected:(selectedValue){
                                print(selectedValue);
                            } ,
                            ),
                            ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const Text("Offer Product ?"),
                     DropDownButton(
                      items: ["true","false"],
                      selectedItemText: "Offer ?",
                      onSelected: (selectedValue){
                          print(selectedValue);
                      },
                      ),
                      SizedBox(height: 10),
                      ElevatedButton(
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: Colors.indigoAccent
                        ),
                        onPressed:(){}, child: Text("Add Product"))
            ],
          ),
        ),
      ),
    );
  }
}