import 'package:flutter/material.dart';

class MyTestWidget extends StatefulWidget {
  const MyTestWidget({super.key});

  @override
  State<MyTestWidget> createState() => _MyTestWidgetState();
}

class _MyTestWidgetState extends State<MyTestWidget> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      scrollDirection: Axis.vertical,
      slivers: <Widget>[
        // Your sliver widgets go here
        const SliverAppBar(
          title: Text('App Bar'),
          expandedHeight: 200,
          // ...
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ListTile(
                title: Text('Item $index'),
              );
            },
            childCount: 100,
          ),
        ),
        // ...
      ],
    );
  }
}
