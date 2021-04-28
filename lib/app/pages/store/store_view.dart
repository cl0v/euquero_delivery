import 'package:flutter/material.dart';

import 'package:euquero_delivery/app/pages/home/models/store_model.dart';

class StoreView extends StatefulWidget {
  final StoreModel store;

  StoreView({
    required this.store,
  });
  @override
  _StoreViewState createState() => _StoreViewState();
}

class _StoreViewState extends State<StoreView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            widget.store.title,
          ),
        ),
        body: ListView.builder(
          itemCount: widget.store.products.length,
          itemBuilder: (context, index) {
            return ProductListTile(product: widget.store.products[index]);
          },
        ));
  }
}

class ProductListTile extends StatelessWidget {
  final ProductModel product;

  const ProductListTile({required this.product});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Text(product.price.toString()),
      title: Text(product.title),
      subtitle: Text(product.desc),
      leading: Image.network(
        product.imgUrl,
      ),
    );
  }
}

class ProductModel {
  String imgUrl;
  String title;
  String desc;
  double price;
  ProductModel({
    required this.imgUrl,
    required this.title,
    required this.desc,
    required this.price,
  });
  //extras
}
