import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:shopgo/config/routes/app_route.gr.dart';

class DrawerApp extends StatelessWidget {
  const DrawerApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Add a ListView to the drawer. This ensures the user can scroll
      // through the options in the drawer if there isn't enough vertical
      // space to fit everything.
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 28, 75, 30),
            ),
            child: Text('ShopGo'),
          ),
          Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: Colors.green
                  ),
            onPressed: () async{
              await AutoRouter.of(context).push(const HomeBikerRouteServices());
            },
              child: const Text('Sin pedir')
            )
          ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: Colors.green
                  ),
            onPressed: () async{
              await AutoRouter.of(context).push(const CardServicesEPBiker());
            },
              child: const Text('Por realizar')
            ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: Colors.green
                  ),
            onPressed: () async{
              await AutoRouter.of(context).push(const CardServicesFinalizadoBiker());
            },
              child: const Text('Realizados')
            ),
        ),
        ],
      ),
    );
  }
}
