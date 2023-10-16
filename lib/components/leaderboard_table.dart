import 'package:flutter/material.dart';

class LeaderboardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 20.0),
      width: 800,
      height: 370,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0.0, top: 0),
            child: Container(
              width: 500,
              child: TextField(
                style: TextStyle(fontSize: 14.0),
                decoration: InputDecoration(
                  hintText: 'Search a team',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 12.0,
                  ),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                DataTable(
                  columns: [
                    DataColumn(label: Text('No.')),
                    DataColumn(label: Text('Team')),
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
                          DataCell(Text('Team')),
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
