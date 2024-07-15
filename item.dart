import 'package:flutter/material.dart';

class ItemPage extends StatefulWidget {
  @override
  _ItemPageState createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  bool added = false;

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> item =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    return Scaffold(
      appBar: AppBar(
        title: Text(item['name']),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            
            SizedBox(height: 20),
            Text(item['name'], style: TextStyle(fontSize: 24)),
            SizedBox(height: 10),
            Text('Rs. ${item['price']}', style: TextStyle(fontSize: 20)),
            SizedBox(height: 10),
            Text('A delicious and healthy meal for your taste buds.'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  added = !added;
                });
              },
              child: Text(added ? 'Added' : 'Add to cart'),
            ),
          ],
        ),
      ),
    );
  }
}
