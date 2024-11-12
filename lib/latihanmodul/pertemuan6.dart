import 'package:flutter/material.dart';

class Pertemuan6 extends StatelessWidget {
  const Pertemuan6({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('pertemuan 6 membuat listview'),
            bottom: TabBar(tabs: [
              Tab(
                text: 'listview',
              ),
              Tab(
                text: 'listview.builder',
              ),
              Tab(
                text: 'listview.separated',
              ),
            ]),
          ),
          body: TabBarView(children: [
            contohListView(),
            ContohListViewBuilder(),
            contohListViewSeparated()
          ]),
        ));
  }
}

class contohListView extends StatelessWidget {
  List<int> get numberList => [1, 2, 3, 4, 5, 6, 7, 8];
  const contohListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: numberList.map((int number) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.grey, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '$number',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      }).toList(),
    );
  }
}

class ContohListViewBuilder extends StatelessWidget {
  List<int> get numberList => [1, 2, 3, 4, 5, 6, 7, 8];
  const ContohListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Container(
          height: 250,
          decoration: BoxDecoration(
              color: Colors.green, border: Border.all(color: Colors.black)),
          child: Center(
            child: Text(
              '${numberList[index]}',
              style: TextStyle(fontSize: 50),
            ),
          ),
        );
      },
      itemCount: numberList.length,
    );
  }
}

class contohListViewSeparated extends StatelessWidget {
  List<int> get numberList => [1, 2, 3, 4, 5, 6, 7, 8];
  const contohListViewSeparated({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 250,
            decoration: BoxDecoration(
                color: Colors.green, border: Border.all(color: Colors.black)),
            child: Center(
              child: Text(
                '${numberList[index]}',
                style: TextStyle(fontSize: 50),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 10,
            color: Colors.amber,
          );
        },
        itemCount: numberList.length);
  }
}
