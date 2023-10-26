import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/constant.dart';
import 'package:flutter_responsive_ui/util/my_box.dart';
import 'package:flutter_responsive_ui/util/my_tile.dart';

class DekstopScaffold extends StatefulWidget {
  const DekstopScaffold({Key? key}) : super(key: key);

  @override
  State<DekstopScaffold> createState() => _DekstopScaffoldState();
}

class _DekstopScaffoldState extends State<DekstopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: myBg,
      body: Row(
        children: [
          myDrawer,
          Expanded(
            flex: 2,
            child: Column(
              children: [
                //4 box on the top
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                      itemCount: 4,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                      itemBuilder: (context, index) {
                        return const MyBox();
                      },
                    ),
                  ),
                ),
                //tiles below it
                Expanded(
                    child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return MyTile();
                  },
                ))
              ],
            ),
          ),
          Expanded(
              child: Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.all(8),
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                  ),
                  child: const Text(
                    'h a m m D m o b',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
