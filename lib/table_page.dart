
import 'package:flutter/material.dart';

class TablePage extends StatefulWidget {
  const TablePage({Key? key}) : super(key: key);

  @override
  State<TablePage> createState() => _TablePageState();
}

class _TablePageState extends State<TablePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(padding: const EdgeInsets.all(15),
         child: SingleChildScrollView(
           child: Table(
            border: TableBorder.all(color: Colors.purple),
             defaultVerticalAlignment: TableCellVerticalAlignment.middle,
             children: [
              const  TableRow(
                 decoration: BoxDecoration(
                   color: Colors.redAccent
                 ),
                 children: [
                   TableCell(
                     verticalAlignment: TableCellVerticalAlignment.middle,
                       child: Padding(padding: const EdgeInsets.all(8),
                       child: Text("Text 1"),)
                   ),
                   TableCell(
                       verticalAlignment: TableCellVerticalAlignment.middle,
                       child: Padding(padding: const EdgeInsets.all(8),
                         child: Text("Text 2"),)
                   ),

                   TableCell(
                       verticalAlignment: TableCellVerticalAlignment.middle,
                       child: Padding(padding: const EdgeInsets.all(8),
                         child: Text("Text 3"),)
                   ),
                 ]
               ),
               ...List.generate(30, (index) => TableRow(
                  children: [

                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(padding: EdgeInsets.all(8),
                          child: GestureDetector(
                              onTap: (){
                                var a = index;
                                var f = a;
                              },
                              child: Text("Cell 1")),)
                    ),

                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(padding: const EdgeInsets.all(8),
                          child: Text("Cell 2"),)
                    ),

                    TableCell(
                        verticalAlignment: TableCellVerticalAlignment.middle,
                        child: Padding(padding: const EdgeInsets.all(8),
                          child: Text("Cell 3"),)
                    ),
                  ]
               ))
             ],
        ),
         ),
        ),
      ),
    );
  }
}
