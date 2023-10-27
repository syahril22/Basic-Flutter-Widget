import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  ListViewPage({super.key});

  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Usage ListView Widget"),
      ),
      // body: ListView(
      //   children: [
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         border: Border.all(color: Colors.black),
      //         color: Colors.amber,
      //       ),
      //       child: const Text(
      //         "1",
      //         style: TextStyle(fontSize: 30),
      //       ),
      //     ),
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         border: Border.all(color: Colors.black),
      //         color: Colors.amber,
      //       ),
      //       child: const Text(
      //         "2",
      //         style: TextStyle(fontSize: 30),
      //       ),
      //     ),
      //     Container(
      //       height: 250,
      //       decoration: BoxDecoration(
      //         border: Border.all(color: Colors.black),
      //         color: Colors.amber,
      //       ),
      //       child: const Text(
      //         "3",
      //         style: TextStyle(fontSize: 30),
      //       ),
      //     )
      //   ],
      // ),

      // penggunaan listview() start
      // body: ListView(
      //     children: numberList.map((e) {
      //   return Container(
      //     height: 250,
      //     decoration: BoxDecoration(
      //         color: Colors.amber, border: Border.all(color: Colors.black)),
      //     child: Center(
      //       child: Text(
      //         "$e",
      //         style: const TextStyle(fontSize: 30, color: Colors.black),
      //       ),
      //     ),
      //   );
      // }).toList()),
      // penggunaan listview() end

      // penggunaan listview.builder start
      // body: ListView.builder(
      //     itemCount: numberList.length,
      //     itemBuilder: (context, index) {
      //       return Container(
      //         height: 150,
      //         decoration: BoxDecoration(
      //             color: Colors.black, border: Border.all(color: Colors.white)),
      //         child: Center(
      //           child: Text(
      //             "${numberList[index]}",
      //             style: const TextStyle(fontSize: 30, color: Colors.white),
      //           ),
      //         ),
      //       );
      //     }),
      // penggunaan listview.builder end

      // Penggunaan ListView.separated start
      body: ListView.separated(
        itemCount: numberList.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
              color: Colors.grey,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: const TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
      // Penggunaan ListView.separated start
    );
  }
}
