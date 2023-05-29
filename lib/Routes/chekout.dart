//
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart.dart';
import 'model.dart';

class Chekout extends StatefulWidget {
  const Chekout({Key? key}) : super(key: key);

  @override
  State<Chekout> createState() => _ChekoutState();
}

class _ChekoutState extends State<Chekout> {
  List<Product> products = [
    Product(
        image:
            'https://images.unsplash.com/photo-1576566588028-4147f3842f27?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80',
        name: "T-shirt",
        price: 200),
    Product(
        image:
            "https://plus.unsplash.com/premium_photo-1671379102281-7225f3d3d97d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80",
        name: "Skirt",
        price: 300),
    Product(
        image:
            "https://media.istockphoto.com/id/1436061606/photo/flying-colorful-womens-sneaker-isolated-on-white-background-fashionable-stylish-sports-shoe.jpg?s=612x612&w=is&k=20&c=jCdeOPM3ggzZ18cllvoNkARAg8TK4x1VN03t3Z41JiQ=",
        name: "Shoes",
        price: 500),
  ];

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("My cart"),
        ),
        body: Consumer<Cart>(builder: (context, mydata, child) {
          print(mydata.basket);
          return ListView.builder(
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Consumer<Cart>(
                builder: (context, mydata, child) {
                  return Row(
                    children: [
                      Card(
                        child: Row(
                          children: [
                            Image.network(
                              "${products[index].image}",
                              height: 200,
                              width: 200,
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              child: Column(
                                children: [
                                  Text(
                                    "name : ${products[index].name}",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    "Price : ${products[index].price}",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                  InkWell(
                                      onTap: () {
                                        mydata.add(products[index]);
                                      },
                                      child: Icon(
                                        Icons.add,
                                        size: 30,
                                        color: Colors.green,
                                      )),
                                  InkWell(
                                      onTap: () {
                                        mydata.delete(products[index]);
                                      },
                                      child: Icon(
                                        Icons.remove,
                                        size: 30,
                                        color: Colors.red,
                                      )),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              );
            },
          );
        }),
      ),
    );
  }
}
