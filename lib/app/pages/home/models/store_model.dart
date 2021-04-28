import 'package:euquero_delivery/app/pages/store/store_view.dart';

enum StoreStatus {
  Close,
  Open,
}

class StoreModel {
  String imgUrl;
  String title;
  String desc;
  //enum
  StoreStatus status;
  List<ProductModel> products;

  StoreModel({
    required this.imgUrl,
    required this.title,
    required this.desc,
    required this.status,
    required this.products,
  });
}
