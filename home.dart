import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'name': 'Baked Rice', 'price': 119},
    {'name': 'Rice Bowl', 'price': 156},
    {'name': 'Fried Rice', 'price': 140},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: 
                  Container(
                     height: 40,
                    width: 50,
                    color:Colors.orange,
                    padding:EdgeInsets.all(8.0),
                    child: Text('25% off',textAlign: TextAlign.center,),
                  ),
               ),
                SizedBox(width: 10),
                Expanded(
                  child: 
                 Container(
                    height: 40,
                    width: 50,
                    color: Colors.orange,
                    padding: EdgeInsets.all(8.0),
                    child: Text('50% off',textAlign: TextAlign.center,)
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(items[index]['name']),
                    subtitle: Text('price ${items[index]['price']}'),
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        '/item',
                        arguments: items[index],
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

