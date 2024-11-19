import 'package:flutter/material.dart';

void main() {
  
  List<TableRow> tablerowList = []; // スクロール検証用
  for(int i = 1; i <= 100; i++) {
    tablerowList.add(
     TableRow(
      children: [ Text('アイテム$i'), const Text('A'), const Text('100'), ],)
    );
  }

  final table = Table(
    border: TableBorder.all(),
    children: tablerowList,
  );

  final body = Container( // ボディー
    padding: const EdgeInsets.all(30),
    child: table
  );  

  final sc = Scaffold(
    body: body, // ボディー        
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}