import 'package:euquero_delivery/app/pages/store/store_view.dart';
import 'package:flutter/material.dart';

import 'package:euquero_delivery/app/pages/home/models/store_model.dart';

class StoreListTile extends StatelessWidget {
  final StoreModel store;
  const StoreListTile({required this.store});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => StoreView(store: store),
        ),
      ),
      enabled: store.status == StoreStatus.Open,
      title: Text(store.title),
      subtitle: Text(store.desc),
      leading: Image.network(
        store.imgUrl,
      ),
    );
  }
}
