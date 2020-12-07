import 'package:flutter/material.dart';
import 'package:bmi_calculator/utilities/constants.dart';
import 'reusable_card.dart';

class ExerciseChartTableWidget extends StatelessWidget {
  String exerciseM, exerciseEve, repsM, repsE;
  double rowHeight;

  ExerciseChartTableWidget(
      {this.exerciseM, this.exerciseEve, this.repsE, this.repsM, this.rowHeight});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      colour: kActiveCardColour,
      cardChild: DataTable(
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
              'EXERCISE',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                color: kBottomContainerColor,
                fontSize: 15.0,
              ),
            ),
          ),
          DataColumn(
            label: Text(
              'TIME/REPS',
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
                  'Morning',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              DataCell(
                Text(
                  exerciseM,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              DataCell(
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    repsM,
                    style: TextStyle(
                      color: Colors.white,
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
                  'Evening',
                  style: TextStyle(
                    color: kTurquoiseBlue,
                  ),
                ),
              ),
              DataCell(
                Text(
                  exerciseEve,
                  style: TextStyle(
                    color: kTurquoiseBlue,
                  ),
                ),
              ),
              DataCell(
                Text(
                  repsE,
                  style: TextStyle(
                    color: kTurquoiseBlue,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
