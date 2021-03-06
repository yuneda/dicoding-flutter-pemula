import 'package:flutter/material.dart';

// Expanded nilai flex default : 1

// expanded
class MyExpanded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.red,
            )),
        Expanded(
            child: Container(
          color: Colors.orange,
        )),
        Expanded(
            child: Container(
          color: Colors.yellow,
        )),
        Expanded(
            child: Container(
          color: Colors.green,
        )),
        Expanded(
            child: Container(
          color: Colors.blue,
        )),
        Expanded(
            child: Container(
          color: Colors.indigo,
        )),
        Expanded(
            child: Container(
          color: Colors.purple,
        )),
      ],
    );
  }
}

// flexible
class MyFlexible extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              ExpandedWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: [
              ExpandedWidget(),
              ExpandedWidget(),
            ],
          ),
          Row(
            children: [
              FlexibleWidget(),
              FlexibleWidget(),
            ],
          ),
          Row(
            children: [
              FlexibleWidget(),
              ExpandedWidget(),
            ],
          ),
        ],
      )),
    );
  }
}

class ExpandedWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.teal,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Expanded',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}

class FlexibleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.tealAccent,
          border: Border.all(color: Colors.white),
        ),
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Flexible',
            style: TextStyle(
              color: Colors.teal,
              fontSize: 24,
            ),
          ),
        ),
      ),
    );
  }
}
