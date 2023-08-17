import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:sanberappflutter/tugas/tugas12/GetDetailScreen.dart';

class GetAllData extends StatefulWidget {
  const GetAllData({super.key});

  @override
  State<GetAllData> createState() => _GetAllDataState();
}

class _GetAllDataState extends State<GetAllData> {
  final String url = "https://reqres.in/api/users?page=2";
  List? data;
  @override
  void initState() {
    // TODO: implement initState
    _getRefreshData();
    super.initState();
  }

  Future<void> _getRefreshData() async {
    this.getJsonData(context);
  }

  Future<void> getJsonData(BuildContext context) async {
    var response = await http.get(Uri.parse(url.toString()),
        headers: {'Accept': 'application/json'});
    print(response);
    setState(() {
      var convertDataFromJson = jsonDecode(response.body);
      data = convertDataFromJson["data"];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Get All Data"),
        ),
        body: RefreshIndicator(
          onRefresh: _getRefreshData,
          child: data == 0
              ? Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.builder(
                  itemCount: data == null ? 0 : data!.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(5.0),
                      child: Column(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => GetDetailScreen(
                                          value: data![index]["id"],
                                        )));
                            print(data![index]["id"]);
                          },
                          child: Padding(
                            padding: EdgeInsets.all(0.6),
                            child: Row(
                              children: [
                                ClipRect(
                                  child: Image.network(
                                    data![index]["avatar"],
                                    height: 80,
                                    width: 80,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  children: [
                                    Text(data![index]["first_name"] +
                                        " " +
                                        data![index]["last_name"]),
                                    Text(data![index]["email"])
                                  ],
                                )
                              ],
                            ),
                          ),
                        )
                      ]),
                    );
                  }),
        ));
  }
}
