/// Example of a simple line chart.
import 'dart:math';
import 'package:community_charts_flutter/community_charts_flutter.dart';
import 'package:community_charts_flutter/src/text_style.dart' as style;
import 'package:community_charts_flutter/src/text_element.dart' as element;
import 'package:community_charts_flutter/community_charts_flutter.dart'
    as charts;

import 'package:crypto_app/core/util/price_change.dart';
import 'package:flutter/material.dart';

typedef GetText = String Function();

class LineChart extends StatefulWidget {
  final List<charts.Series<PriceChange, DateTime>> priceChangeList;
  final bool animate;

  const LineChart(this.priceChangeList, {super.key, required this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory LineChart.priceChangeByDayData({
    required num hour,
    required num day,
    required num sevenDays,
    required num thirtyDays,
    required num sixtyDays,
    required num ninetyDays,
    required num year,
  }) {
    return LineChart(
      _priceChangeByDay(
          hour: hour,
          day: day,
          sevenDays: sevenDays,
          thirtyDays: thirtyDays,
          sixtyDays: sixtyDays,
          ninetyDays: ninetyDays,
          year: year),
      // Disable animations for image tests.
      animate: true,
    );
  }

  @override
  State<LineChart> createState() => _LineChartState();

  /// Create one series with sample hard coded data.
  static List<charts.Series<PriceChange, DateTime>> _priceChangeByDay({
    required num hour,
    required num day,
    required num sevenDays,
    required num thirtyDays,
    required num sixtyDays,
    required num ninetyDays,
    required num year,
  }) {
    DateTime currentDate = DateTime.now();
    final data = [
      PriceChange(
          duration: currentDate.subtract(const Duration(hours: 1)), rate: hour),
      PriceChange(
          duration: currentDate.subtract(const Duration(hours: 24)), rate: day),
      PriceChange(
          duration: currentDate.subtract(const Duration(days: 7)),
          rate: sevenDays),
      PriceChange(
          duration: currentDate.subtract(const Duration(days: 30)),
          rate: thirtyDays),
      PriceChange(
          duration: currentDate.subtract(const Duration(days: 60)),
          rate: sixtyDays),
      PriceChange(
          duration: currentDate.subtract(const Duration(days: 90)),
          rate: ninetyDays),
      PriceChange(
          duration: currentDate.subtract(const Duration(days: 365)),
          rate: year),

      // PriceChange(duration: 365, rate: 12.06732905)
    ];

    return [
      charts.Series<PriceChange, DateTime>(
        id: 'Prices',
        colorFn: (_, __) => charts.MaterialPalette.black,
        domainFn: (PriceChange price, _) => price.duration,
        measureFn: (PriceChange price, _) => price.rate,
        displayName: "Price Change Rate",
        data: data,
        labelAccessorFn: (PriceChange price, _) =>
            '${price.rate}', // Display data values as labels
      )
    ];
  }
}

class _LineChartState extends State<LineChart> {
  String value = '';

  @override
  Widget build(BuildContext context) {
    return charts.TimeSeriesChart(
      widget.priceChangeList, animate: widget.animate,
      defaultRenderer: charts.LineRendererConfig(includePoints: true),
      // Include points for each data value
      behaviors: [
        charts.LinePointHighlighter(
          ////////////////////// notice ////////////////////////////
          symbolRenderer: TextSymbolRenderer(() => value),
          ////////////////////// notice ////////////////////////////
        ),
        charts.SeriesLegend(),
      ],
      selectionModels: [
        SelectionModelConfig(changedListener: (SelectionModel model) {
          if (model.hasDatumSelection) {
            value =
                "${model.selectedSeries[0].measureFn(model.selectedDatum[0].index)!.toStringAsFixed(2)}%";
            // setState(() {});
          }
        })
      ],
    );
  }
}

class TextSymbolRenderer extends CircleSymbolRenderer {
  TextSymbolRenderer(this.getText,
      {this.marginBottom = 8, this.padding = const EdgeInsets.all(8)});

  final GetText getText;
  final double marginBottom;
  final EdgeInsets padding;

  @override
  void paint(ChartCanvas canvas, Rectangle<num> bounds,
      {List<int>? dashPattern,
      Color? fillColor,
      FillPatternType? fillPattern,
      Color? strokeColor,
      double? strokeWidthPx}) {
    super.paint(canvas, bounds,
        dashPattern: dashPattern,
        fillColor: fillColor,
        fillPattern: fillPattern,
        strokeColor: strokeColor,
        strokeWidthPx: strokeWidthPx);

    style.TextStyle textStyle = style.TextStyle();
    textStyle.color = Color.black;
    textStyle.fontSize = 15;

    charts.TextElement textElement =
        element.TextElement(getText.call(), style: textStyle);
    double width = textElement.measurement.horizontalSliceWidth;
    double height = textElement.measurement.verticalSliceWidth;

    double centerX = bounds.left + bounds.width / 2;
    double centerY = bounds.top +
        bounds.height / 2 -
        marginBottom -
        (padding.top + padding.bottom);

    canvas.drawRRect(
      Rectangle(
        centerX - (width / 2) - padding.left,
        centerY - (height / 2) - padding.top,
        width + (padding.left + padding.right),
        height + (padding.top + padding.bottom),
      ),
      fill: Color.white,
      radius: 16,
      roundTopLeft: true,
      roundTopRight: true,
      roundBottomRight: true,
      roundBottomLeft: true,
    );
    canvas.drawText(
      textElement,
      (centerX - (width / 2)).round(),
      (centerY - (height / 2)).round(),
    );
  }
}
