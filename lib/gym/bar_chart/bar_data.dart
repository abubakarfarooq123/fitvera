import 'individual_bar.dart';

class BarData{
  final double sunAmount;
  final double monAmount;
  final double tueAmount;
  final double wedAmount;
  final double thurAmount;
  final double friAmount;
  final double satAmount;

  BarData({
    required this.sunAmount,
    required this.monAmount,
    required this.friAmount,
    required this.satAmount,
    required this.thurAmount,
    required this.tueAmount,
    required this.wedAmount,
  });
List<IndividualBar> barData =[];

void initializeBarData(){
  barData =[
    IndividualBar(x: 0, y: sunAmount),
    IndividualBar(x: 1, y: monAmount),
    IndividualBar(x: 2, y: tueAmount),
    IndividualBar(x: 3, y: thurAmount),
    IndividualBar(x: 4, y: wedAmount),
    IndividualBar(x: 5, y: friAmount),
    IndividualBar(x: 6, y: satAmount),

  ];

}
}