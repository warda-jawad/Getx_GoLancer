import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'cart.dart';

class Chek extends StatefulWidget {
  const Chek({Key? key}) : super(key: key);

  @override
  State<Chek> createState() => _ChekState();
}

class _ChekState extends State<Chek> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: Scaffold(
        appBar: AppBar(
          title: Text("My cart"),
        ),
        body: Consumer<Cart>(builder: (context, mydata, child) {
          return ListView.builder(
            itemCount: mydata.basket.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Card(
                    child: Row(
                      children: [
                        Image.network(
                          "${mydata.basket[index].image}",
                          height: 200,
                          width: 200,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 30),
                          child: Column(
                            children: [
                              Text(
                                "name : ${mydata.basket[index].name}",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              Text(
                                "Price : ${mydata.basket[index].price}",
                                style: TextStyle(
                                  fontSize: 20,
                                ),
                              ),
                              InkWell(
                                  onTap: () {
                                    mydata.add(mydata.basket[index]);
                                  },
                                  child: Icon(
                                    Icons.add,
                                    size: 30,
                                    color: Colors.green,
                                  )),
                              InkWell(
                                  onTap: () {
                                    mydata.delete(mydata.basket[index]);
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
        }),
      ),
    );
  }
}
