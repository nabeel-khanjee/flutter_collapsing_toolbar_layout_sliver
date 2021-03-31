import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: new HomePage(),
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          new SliverAppBar(
            expandedHeight: 150.0,
            floating: false,
            pinned: true,
            flexibleSpace: new FlexibleSpaceBar(
              title: new Text("Sliper App Bar"),
            ),
          ),
          new SliverList(
            delegate: new SliverChildBuilderDelegate(
              (context, int index) => new ListTile(
                title: new Text("List item $index"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
