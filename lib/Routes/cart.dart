import 'package:flutter/widgets.dart';
import 'package:helloworld/Routes/model.dart';

class Cart with ChangeNotifier {
  List<Product> _products = [];

  double price = 0.0;

  void add(Product product) {
    _products.add(product);

    price += product.price;

    notifyListeners();
  }

  int get Count {
    return _products.length;
  }

  double get TotalPrice {
    return price;
  }

  List<Product> get basket {
    return _products;
  }

  void delete(Product product) {
    _products.remove(product);
    price -= product.price;
    notifyListeners();
  }
}
