import 'package:flutter/material.dart';

class DetailsHomeScreen extends StatelessWidget {
  const DetailsHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/product.png'),
            //Image.network('https://via.placeholder.com/350'),
            SizedBox(height: 16),
            Text(
              "Product Name",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
            ),
            SizedBox(height: 8),
            Text(
              "\$100.00",

            ),
            SizedBox(height: 16),
            Text(
              "Description of the product goes here. It provides information about the product features, benefits, and more.",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 200),
            ElevatedButton(
              onPressed: () {

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(22),
                ),
              ),
              child: Text(
                  "Add to Cart",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  )
              ),
            ),
          ],
        ),
      ),
    );
  }

  }
