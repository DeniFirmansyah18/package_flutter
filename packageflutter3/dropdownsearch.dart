import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:packageflutter3/pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<Map<String, dynamic>> dataList = [
    {
      "country": "Brazil",
      "id": 1,
    },
    {
      "country": "Tunisia",
      "id": 2,
    },
    {
      "country": "Canada",
      "id": 3,
    },
    {
      "country": "India",
      "id": 4,
    },
    {
      "country": "Indonesia",
      "id": 5,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DROPDOWN"),
      ),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: DropdownSearch<Map<String, dynamic>>(
            mode: Mode.BOTTOM_SHEET,
            items: dataList,
            onChanged: (value) => print(value?["id"] ?? null),
            selectedItem: {
              "country": "Canada",
              "id": 3,
            },
            showClearButton: true,
            showSearchBox: true,

          ),
      ),
    );
  }
}

