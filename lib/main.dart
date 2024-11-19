import 'package:flutter/material.dart';

void main() {
  const tablerow1 = TableRow(
        children: [ Text('アイテム1'), Text('300'), ],);

  const tablerow2 = TableRow(
        decoration: BoxDecoration(
          color: Colors.yellow,),
        children: [ Text('アイテム2'), Text('200'), ],);

  const tablerow3 = TableRow(
        children: [ Text('アイテム3'), Text('100'), ],);

  final table = Table(
    border: TableBorder.all(width: 2,color: Colors.blue),
    children: const [
      tablerow1,
      tablerow2,
      tablerow3,
    ],
  );

  final body = table;  

  final sc = Scaffold(
    body: body, // ボディー        
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}