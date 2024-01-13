import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // import services.dart
import 'package:read_json_file/ProductDataModel.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // use Scaffold instead of Container
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(child: Text("${data.error}"));
          } else if (data.hasData) {
            var items = data.data as List<ProductDataModel>;
            return ListView.builder(
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 1,
                  margin: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Container(
                    color: Colors.amber,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Image(
                            image:
                                NetworkImage(items[index].imageURL.toString()),
                            fit: BoxFit.fill,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Color.fromARGB(255, 235, 195, 35),
                            padding: EdgeInsets.only(bottom: 8),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(
                                    items[index].name.toString(),
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(items[index].price.toString()),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8, right: 8),
                                  child: Text(items[index].category.toString()),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

Future<List<ProductDataModel>> ReadJsonData() async {
  final jsondata = await rootBundle
      .loadString('jsonfile/productlist.json'); // initialize rootBundle
  final list = json.decode(jsondata) as List<dynamic>;

  return list.map((e) => ProductDataModel.fromJson(e)).toList();
}
