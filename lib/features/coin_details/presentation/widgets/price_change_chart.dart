import 'package:crypto_app/features/coin_details/presentation/widgets/line_chart.dart';
import 'package:flutter/material.dart';


class PriceChangeChart extends StatelessWidget {
  final num hour;
  final num day;
  final num sevenDays;
  final num thirtyDays;
  final num sixtyDays;
  final num ninetyDays;
  final num year;

  const PriceChangeChart({
    super.key,
    required this.hour,
    required this.day,
    required this.sevenDays,
    required this.thirtyDays,
    required this.sixtyDays,
    required this.ninetyDays,
    required this.year,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          width: MediaQuery.of(context).size.width * 2,
          height: 250,
          child: LineChart.priceChangeByDayData(
            hour: hour,
            day: day,
            sevenDays: sevenDays,
            thirtyDays: thirtyDays,
            sixtyDays: sixtyDays,
            ninetyDays: ninetyDays,
            year: year,

          ),
        ),
      ),
    );
  }
}