// import 'package:flutter/material.dart';

// class MediaQueryPage extends StatelessWidget {
//   const MediaQueryPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;
//     Orientation orientation = MediaQuery.of(context).orientation;
//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         title: const Text("Usage MediaQuery for Responsive Design"),
//       ),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           Text(
//             'Screen width: ${screenSize.width.toStringAsFixed(2)}',
//             style: TextStyle(color: Colors.white, fontSize: 18),
//             textAlign: TextAlign.center,
//           ),
//           Text(
//             "Orientation: $orientation",
//             style: TextStyle(color: Colors.white, fontSize: 18),
//             textAlign: TextAlign.center,
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class MediaQueryPage extends StatelessWidget {
//   const MediaQueryPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     Size screenSize = MediaQuery.of(context).size;

//     return Scaffold(
//       backgroundColor: Colors.blueGrey,
//       body: Row(
//         children: [
//           Expanded(
//             child: LayoutBuilder(
//               builder: (BuildContext context, BoxConstraints constraints) {
//                 return Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     Text(
//                       'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
//                       style: const TextStyle(color: Colors.white, fontSize: 18),
//                       textAlign: TextAlign.center,
//                     ),
//                     Text(
//                       'LayoutBuilder: ${constraints.maxWidth}',
//                       style: const TextStyle(color: Colors.white, fontSize: 18),
//                       textAlign: TextAlign.center,
//                     ),
//                   ],
//                 );
//               },
//             ),
//           ),
//           Expanded(
//             flex: 3,
//             child: LayoutBuilder(
//               builder: (BuildContext context, BoxConstraints constraints) {
//                 return Container(
//                   color: Colors.white,
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     children: [
//                       Text(
//                         'MediaQuery: ${screenSize.width.toStringAsFixed(2)}',
//                         style: const TextStyle(
//                             color: Colors.blueGrey, fontSize: 18),
//                         textAlign: TextAlign.center,
//                       ),
//                       Text(
//                         'LayoutBuilder: ${constraints.maxWidth}',
//                         style: const TextStyle(
//                             color: Colors.blueGrey, fontSize: 18),
//                         textAlign: TextAlign.center,
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 600) {
            return ListView(
              children: _generateContainers(),
            );
          } else if (constraints.maxWidth < 900) {
            return GridView.count(
              crossAxisCount: 2,
              children: _generateContainers(),
            );
          } else {
            return GridView.count(
              crossAxisCount: 6,
              children: _generateContainers(),
            );
          }
        },
      ),
    );
  }

  List<Widget> _generateContainers() {
    return List<Widget>.generate(20, (index) {
      return Container(
        margin: const EdgeInsets.all(8),
        color: Colors.blueGrey,
        height: 200,
      );
    });
  }
}
