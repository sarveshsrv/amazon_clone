
import 'package:amazon_clone/UI/product_card.dart';
import 'package:amazon_clone/UI/product_no_button.dart';
import 'package:amazon_clone/models/category.dart';
import 'package:amazon_clone/models/product.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  Map titles;
  @override
  Widget build(BuildContext context) {
    titles = {
    0 : "Deal of the Day",
    1 : "Watches",
    2 : "Sunscreen",
    3 : "Clothing",
    4 : "Stay home,stay engaged",
    5 : "Deal of the Day",
    6 : "Watches",
    7 : "Sunscreen",
    8 : "Clothing",
    9 : "Stay home,stay engaged",
  };
    return ListView(
      padding: EdgeInsets.all(0),
      children: getProducts(),
    );
  }

  List<Widget> getProducts() {
    List<Widget> productList = [];
    bool hasBeenThree = true;
    bool isButton = true;
    Category cat;
    bool many = true;
    for (int i = 0; i < 10; i++) {
      List<Product> products = [];
      if (i % 2 > 0) {
        if (hasBeenThree) {
          for (int j = 1; j < 10; j++) {
            products.add(createProduct("watch" + j.toString(), "watch", 10.0 * j));
          }
        } else {
          for (int j = 1; j < 4; j++) {
            products.add(createProduct("image" + j.toString(), "product", 10.0 * j));
          }
        }
        hasBeenThree = !hasBeenThree;
      } else {
        if (isButton) {
          products.add(createProduct("image1", "new product!", 10.0));
        } else {
          cat = createCategory(many);
          many = !many;
          products.add(createProduct("image1", "new product!", 10.0));
        }
      }
      if (i % 2 > 0) {
        if (isButton) {
          productList.add(ProductCard(products: products, title: titles[i],));
        } 
        else {
          productList.add(CategoryCard(category: cat,));
        }
        isButton = !isButton;
      } else {
        productList.add(ProductCard(products: products, title: titles[i],));
      }
    }
    return productList;
  }

  Product createProduct(String assetName, String productName, double price) {
    return Product(AssetImage("lib/assets/" + assetName + ".jpeg"), productName, price); 
  } 

  Category createCategory(bool many) {
    
    List<AssetImage> images = [];
    List<String> categories = [];
    if (many) {
      images = [
        AssetImage("lib/assets/image221.jpg"),
        AssetImage("lib/assets/image222.jpg"),
        AssetImage("lib/assets/image223.jpg"),
        AssetImage("lib/assets/image224.jpg"),
      ];
      categories = [
        "Cooking Essentials",
        "Beauty Essentials",
        "Household Essentials",
        "Packaged foods"
      ];
    }
    else {
      images = [
        AssetImage("lib/assets/image2.jpeg"),
      ];
    }
    return Category(images, "Grocery Essentials | Amazon Pantry ", categories);
  }
}