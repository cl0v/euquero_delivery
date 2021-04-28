import 'package:euquero_delivery/app/pages/home/components/store_list_tile.dart';
import 'package:euquero_delivery/app/pages/home/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          child: Image.asset('assets/img/logos/logo.png'),
          width: 100,
        ),
        actions: [
          TextButton(
            onPressed: () {
              //TODO: Implement onTextBtn pressed
            },
            child: Text(
              'Casa',
            ),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(12),
        itemCount: controller.storeList.length,
        itemBuilder: (context, index) {
          return StoreListTile(store: controller.storeList[index]);
        },
      ),
      bottomNavigationBar: navbar(),
    );
  }

  BottomNavigationBar navbar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          label: 'Próximo',
          icon: Icon(
            Icons.location_on_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Alertas',
          icon: Icon(
            Icons.notifications_outlined,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Explorar',
          icon: Icon(
            Icons.search,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Sacola',
          icon: Icon(
            Icons.shopping_bag,
          ),
        ),
        BottomNavigationBarItem(
          label: 'Conta',
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
