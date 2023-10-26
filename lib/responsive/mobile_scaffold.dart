import 'package:flutter/material.dart';
import 'package:flutter_responsive_ui/constant.dart';
import 'package:flutter_responsive_ui/util/my_box.dart';
import 'package:flutter_responsive_ui/util/my_tile.dart';

class MobileScaffold extends StatefulWidget {
  const MobileScaffold({Key? key}) : super(key: key);

  @override
  State<MobileScaffold> createState() => _MobileScaffoldState();
}

class _MobileScaffoldState extends State<MobileScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: myAppbar,
      backgroundColor: myBg,
      drawer: myDrawer,
      body: Column(
        children: [
          //4 box on the top
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (context, index) {
                  return const MyBox();
                },
              ),
            ),
          ),
          //tiles below it
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return MyTile();
            },
          ))
        ],
      ),
    );
  }
}
