import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PredictionsCard extends StatefulWidget {
  @override
  _PredictionsCardState createState() => _PredictionsCardState();
}

class _PredictionsCardState extends State<PredictionsCard> {
  int solarPanelCount = 1;
  int biomassCount = 2;
  int hydrogenCount = 3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 22, right: 5), // Add left padding 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: Text(
              'Predictions',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(child: _buildCardWithFixedSize(_energyConsumptionCard())),
              SizedBox(width: 10),
              Expanded(child: _buildCardWithFixedSize(_renewableEnergyCard())),
              SizedBox(width: 10),
              Expanded(child: _buildCardWithFixedSize(_carbonEmissionCard())),
            ],
          ),
        ],
      ),
    );
  }

  // Utility function to apply the fixed width and height for each card
  Widget _buildCardWithFixedSize(Widget child) {
    return Container(
      height: 260, // Fixed height
      child: child,
    );
  }

  Widget _energyConsumptionCard() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Energy Consumption',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          SizedBox(height: 4),
          Text('What is the trend?',
              style: TextStyle(fontSize: 14, color: Colors.grey)),
          SizedBox(height: 8),
          Text('Next Month: 450 kWh (RM 490)',
              style: TextStyle(fontSize: 14, color: Color(0xFF0672CB))),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
            child: Text(
              'The energy consumption is expected to follow a moderate increase due to upcoming weather changes and anticipated usage trends.',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
          ),
          Spacer(), // This will push the button down
          SizedBox(
            width: double.infinity, // Makes the button occupy the whole width
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Details'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0672CB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Setting corner radius here
                ),
              ),
            ),
          ),
          //SizedBox(height: 8), // Space from the bottom
        ],
      ),
    ),
  );
}

  Widget _renewableEnergyCard() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0), 
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Renewable Energy',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          SizedBox(height: 4),
          Text('How much can I save?',
              style: TextStyle(fontSize: 14, color: Colors.grey)),
          SizedBox(height: 8),
          _buildEnergyCounter('Solar Panel', solarPanelCount,
              (val) => setState(() => solarPanelCount = val)),
          SizedBox(height: 6),
          _buildEnergyCounter('Biomass', biomassCount,
              (val) => setState(() => biomassCount = val)),
          SizedBox(height: 6),
          _buildEnergyCounter('Hydrogen', hydrogenCount,
              (val) => setState(() => hydrogenCount = val)),
          Spacer(), // This will push the button down
          SizedBox(
            width: double.infinity, // Makes the button occupy the whole width
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Calculate'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF0672CB),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // Setting corner radius here
                ),
              ),
            ),
          ),
          //SizedBox(height: 5), // Space from the bottom
        ],
      ),
    ),
  );
}

Widget _carbonEmissionCard() {
  // Sample data for the chart and total emission calculation
  List<PieChartSectionData> pieData = [
    PieChartSectionData(color: Colors.green, value: 28.6),
    PieChartSectionData(color: Colors.blue, value: 42.9),
    PieChartSectionData(color: Colors.pink, value: 20.0),
  ];
  double totalEmission = pieData.fold(0, (sum, item) => sum + item.value);

  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Energy Consumption',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)),
          SizedBox(height: 4),
          Text('Environmental Impact',
              style: TextStyle(fontSize: 14, color: Colors.grey)),
          SizedBox(height: 8),

          Expanded(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          PieChart(
                            PieChartData(
                              borderData: FlBorderData(show: false),
                              sectionsSpace: 0,
                              centerSpaceRadius: 50,
                              sections: pieData,
                            ),
                          ),
                          Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Total Emission:',
                              style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Text(
                              '$totalEmission kg',
                              style: TextStyle(fontSize: 14, color: Colors.blue),
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Label 1
                      Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.green, radius: 5),
                          SizedBox(width: 4),
                          Text('Refrigerator', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      // Label 2
                      Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.blue, radius: 5), 
                          SizedBox(width: 4),
                          Text('Computer', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                      // Label 3
                      Row(
                        children: [
                          CircleAvatar(backgroundColor: Colors.pink, radius: 5), 
                          SizedBox(width: 4),
                          Text('Air conditioner', style: TextStyle(fontSize: 12)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}


  Widget _buildEnergyCounter(String title, int count, ValueChanged<int> onChanged) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0), 
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300)),
          Row(
            children: [
              IconButton(
                onPressed: () => onChanged(count - 1),
                icon: SvgPicture.asset('assets/icons/dds2_remove-cir.svg', height: 14, width: 12),
              ),
              Text(count.toString()),
              IconButton(
                onPressed: () => onChanged(count + 1),
                icon: SvgPicture.asset('assets/icons/dds2_add-cir.svg', height: 14, width: 12),
              ),
            ],
          ),
        ],
      ),
    );
}

}
