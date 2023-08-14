import 'package:flutter/material.dart';
import 'package:sanberappflutter/tugas/tugas9/DrawerScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerScreen(),
      appBar: AppBar(
        title: Text("Home"),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
                IconButton(onPressed: () {}, icon: Icon(Icons.trolley))
              ],
            ),
            // SizedBox(height: 20),
            Text.rich(
              TextSpan(children: <TextSpan>[
                TextSpan(
                    text: "Welcome, \n",
                    style: TextStyle(color: Colors.blue[300])),
                TextSpan(text: "Anggi", style: TextStyle(color: Colors.black))
              ]),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 18,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  hintText: "Search"),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 200,
              child: GridView.count(
                padding: EdgeInsets.all(5),
                crossAxisCount: 2,
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 10,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  for (var country in countries)
                    Image.asset("assets/img/${country}.png")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final countries = ["Tokyo", "Berlin", "Roma", "Monas"];
