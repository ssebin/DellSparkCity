import 'package:flutter/material.dart';

class LeaderboardTable extends StatelessWidget {
  const LeaderboardTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      width: 750,
      height: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0),
            child: SizedBox(
              width: 500,
              child: TextField(
                style: const TextStyle(fontSize: 14.0),
                decoration: InputDecoration(
                  hintText: 'Search a floor',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 12.0,
                  ),
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                DataTable(
                  columns: const [
                    DataColumn(label: Text('No.')),
                    DataColumn(label: Text('Floor')),
                    DataColumn(label: Text('Consumption/kWh')),
                    DataColumn(label: Text('Renewable Energy/%')),
                    DataColumn(label: Text('Cost/RM')),
                  ],
                  rows: List<DataRow>.generate(
                    10,
                    (index) {
                      return DataRow(
                        color: MaterialStateColor.resolveWith(
                          (states) => index.isOdd
                              ? Colors.grey[200] ?? Colors.white
                              : Colors.white,
                        ),
                        cells: [
                          DataCell(Text('Row ${index + 1}')),
                          DataCell(Text('Floor')),
                          DataCell(Text('123')),
                          DataCell(Text('80%')),
                          DataCell(Text('200')),
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
