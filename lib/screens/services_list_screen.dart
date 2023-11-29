import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scissors/model/services.dart';

class ServicesListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: serviceList.length,
            itemBuilder: (context, index) {
              Services service = serviceList[index];
              return Card(
                child: ListTile(
                  leading: Image.network(service.imageUrl),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        service.title,
                        style: TextStyle(fontSize: 20,
                        fontWeight: FontWeight.bold,
                        height: 3),
                      ),
                      Text(service.amount,
                      style: TextStyle(
                        fontWeight:FontWeight.w100,
                      ),),
                    ],
                  ),
                  subtitle: Text(service.description),
                  trailing: ElevatedButton(
                    onPressed: () {},
                    child: Text('Add'),
                  ),
                ),
              );
            }));
  }
}
