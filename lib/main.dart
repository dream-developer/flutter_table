import 'package:flutter/material.dart';

void main() {
  const tablerow1 = TableRow(
        children: [ Text('アイテム1'), Text('A'), Text('300'), ],);

  const tablerow2 = TableRow(
        decoration: BoxDecoration(
          color: Colors.yellow,),
        children: [ Text('アイテム2'), Text('B'), Text('200'), ],);

  const tablerow3 = TableRow(
        children: [ Text('アイテム3'), Text('A'), Text('100'), ],);


  final table = Table(
    columnWidths: const {
      0: FlexColumnWidth(1),
      1: FlexColumnWidth(3),
      2: FlexColumnWidth(2),
    },
    border: TableBorder.all(width: 2,color: Colors.blue),
    children: const [
      tablerow1,
      tablerow2,
      tablerow3,
    ],
  );
 
  final body = Container( // ボディー
    padding: EdgeInsets.all(30),
    color: Colors.blue[50],
    child: table
  );  

  final sc = Scaffold(
    body: body, // ボディー        
  );

  final app = MaterialApp(home: sc);
  runApp(app);
}