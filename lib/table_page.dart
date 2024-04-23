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
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Example 1"),
                Table(
                  border: TableBorder.all(),
                  columnWidths: {
                    0: FractionColumnWidth(0.5), //first column
                    1: FractionColumnWidth(0.25), //second column
                    2: FractionColumnWidth(0.25), //third column
                  },
                  children: [
                    buildRow(["Name", "Family", "Age"], isHeader: true),
                    buildRow(["Mosayeb", "Masoumi", "65"]),
                    buildRow(["nabi", "rezai", "30"]),
                    buildRow(["roz", "miladi", "11"]),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Example 2"),
                Table(
                  border: TableBorder.all(color: Colors.purple),
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  children: [
                    const TableRow(
                        decoration: BoxDecoration(color: Colors.redAccent),
                        children: [
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text("Text 1"),
                              )),
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text("Text 2"),
                              )),
                          TableCell(
                              verticalAlignment:
                                  TableCellVerticalAlignment.middle,
                              child: Padding(
                                padding: const EdgeInsets.all(8),
                                child: Text("Text 3"),
                              )),
                        ]),
                    ...List.generate(
                        5,
                        (index) => TableRow(children: [
                              TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: EdgeInsets.all(8),
                                    child: GestureDetector(
                                        onTap: () {
                                          var a = index;
                                          var f = a;
                                        },
                                        child: Text("Cell 1")),
                                  )),
                              TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text("Cell 2"),
                                  )),
                              TableCell(
                                  verticalAlignment:
                                      TableCellVerticalAlignment.middle,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8),
                                    child: Text("Cell 3"),
                                  )),
                            ]))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  TableRow buildRow(List<String> cells, {bool isHeader = false}) {
    return TableRow(
        children: cells.map((cell) {
      final textStyle = TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: isHeader ? 17 : 15);

      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
            child: Text(
          cell,
          style: textStyle,
        )),
      );
    }).toList());
  }
}
