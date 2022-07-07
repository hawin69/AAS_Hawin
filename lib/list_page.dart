import 'package:aas_0074/detail_page.dart';
import 'package:aas_0074/style.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ListPage extends StatelessWidget {
  final String apiUrl = "https://dummyjson.com/products";
  Future<List<dynamic>> _fecthDataUsers() async {
    var result = await http.get(Uri.parse(apiUrl));
    return json.decode(result.body)['products'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(146, 244, 130, 1),
        title: Text('List Product'),
      ),
      body: Container(
        child: FutureBuilder<List<dynamic>>(
          future: _fecthDataUsers(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  padding: EdgeInsets.all(7),
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      margin: EdgeInsets.all(7),
                      child: ListTile(
                        leading: Image.network(
                          snapshot.data[index]['thumbnail'],
                          width: 70,
                          fit: BoxFit.cover,
                        ),
                        title: Text(
                          snapshot.data[index]['title'],
                          style: titletext,
                        ),
                        subtitle: Text(
                          snapshot.data[index]['category'],
                          style: litFont,
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DetailPage(index),
                                  settings: RouteSettings(
                                    arguments: snapshot.data[index],
                                  )));
                        },
                      ),
                    );
                  });
            } else {
              return Center(child: CircularProgressIndicator());
            }
          },
        ),
      ),
    );
  }
}
