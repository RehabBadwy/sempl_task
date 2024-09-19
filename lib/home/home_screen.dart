import 'package:flutter/material.dart';

import 'details/details_home_screen.dart';
import 'details/drawer.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({super.key});
  String home = 'Home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Row(
          children: [
            const Text('Home Screen',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.remove_shopping_cart,
                color: Colors.white,),
              onPressed: () {
                showBottomSheet(context);
              },
            ),
          ],
        ),
      ),
      drawer: DrawerExample(),
      body:   SingleChildScrollView(
        child: Column(
          children: [
            const  Column(
              children: [
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'Welcome Home : Kyan!',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(height: 10),
                Center(
                  child: Text(
                    'User ID: 123456',
                  ),
                ),
              ],
            ),
            const  Divider(),
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 150,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const DetailsHomeScreen(),
                      ),
                    );

                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                     decoration: BoxDecoration(
                       color: Colors.grey[400],
                       borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          SizedBox(height: 10),
                          Image.asset('assets/images/box.png',
                          width: 50,
                            height: 50,
                          ),
                          SizedBox(height: 20),
                          const Text('QTY: 10',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          const Text('\$ 100.00',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 10,
            ),
          ],
        ),
      ),
    );
  }

  //bottomSheet
  void showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          width: double.infinity,
          height: 300,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(

              children: [
                const Text('Bottom Sheet'),
                 SizedBox(height: 180),
                Expanded(
                  child: Row(
                    children: [
                      const Text('Total: \$ 100.00',
                      style: TextStyle(
                        fontSize: 20,
                      )
                      ),
                      const Spacer(),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          minimumSize: const Size(40, 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(22),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text('Checkout',
                        style: TextStyle(
                          color: Colors.white,
                        )
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
