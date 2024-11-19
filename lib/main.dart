import 'package:flutter/material.dart';

void main() {
  const tablerow1 = TableRow( // 1
        children: [ Text('アイテム1'), Text('300'), ],);

  const tablerow2 = TableRow(
        children: [ Text('アイテム2'), Text('200'), ],);

  const tablerow3 = TableRow(
        children: [ Text('アイテム3'), Text('100'), ],);

  final table = Table( // 2
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