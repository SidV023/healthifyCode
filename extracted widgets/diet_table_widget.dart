import 'package:flutter/material.dart';
import 'package:bmi_calculator/utilities/constants.dart';
import 'reusable_card.dart';

class DietChartTableWidget extends StatelessWidget {
  String diet8, diet13, diet17, diet22, dietBB;
  double rowHeight;

  DietChartTableWidget(
      {this.diet8, this.diet13, this.diet17, this.diet22, this.dietBB, this.rowHeight});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColour,
      cardChild: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: DataTable(
          dataRowHeight: rowHeight,
          columns: <DataColumn>[
            DataColumn(
              label: Text(
                '   TIME',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: kBottomContainerColor,
                  fontSize: 15.0,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                '                    DIET',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: kBottomContainerColor,
                  fontSize: 15.0,
                ),
              ),
            ),
          ],
          rows: <DataRow>[
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(
                    '8:00 AM',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                DataCell(
                  Text(
                    diet8,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(
                    '1:00 PM(Lunch)',
                    style: TextStyle(
                      color: kTurquoiseBlue,
                    ),
                  ),
                ),
                DataCell(
                  SingleChildScrollView(
                    scrollDirection: Axis.vertical,
                    child: Text(
                      diet13,
                      style: TextStyle(
                        color: kTurquoiseBlue,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(
                    '5:00 PM',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                DataCell(
                  Text(
                    diet17,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            DataRow(
              cells: <DataCell>[
                DataCell(
                  Text(
                    '8:00 PM(Dinner)',
                    style: TextStyle(
                      color: kTurquoiseBlue,
                    ),
                  ),
                ),
                DataCell(
                  Text(
                    diet22,
                    style: TextStyle(
                      color: kTurquoiseBlue,
                    ),
                  ),
                ),
              ],
            ),
            // DataRow(
            //   cells: <DataCell>[
            //     DataCell(
            //       Text(
            //         'Before Bed',
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //     DataCell(
            //       Text(
            //         dietBB,
            //         style: TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}