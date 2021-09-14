import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

typedef void CounterChangeCallback(num value);

class NumberCountView extends StatelessWidget {
  final CounterChangeCallback onChanged;

  NumberCountView({
    Key key,
    @required num initialValue,
    @required this.minValue,
    @required this.maxValue,
    @required this.onChanged,
    @required this.decimalPlaces,
    @required this.color,
    @required this.textStyle,
    @required this.step = 1,
    @required this.buttonSize = 25,
  })  : assert(initialValue != null),
        assert(minValue != null),
        assert(maxValue != null),
        assert(maxValue > minValue),
        assert(initialValue >= minValue && initialValue <= maxValue),
        assert(step > 0),
        selectedValue = initialValue,
        super(key: key);

  ///min value user can pick
  final num minValue;

  ///max value user can pick
  final num maxValue;

  /// decimal places required by the counter
  final int decimalPlaces;

  ///Currently selected integer value
  num selectedValue;

  /// if min=0, max=5, step=3, then items will be 0 and 3.
  final num step;

  /// indicates the color of fab used for increment and decrement
  Color color;

  /// text syle
  TextStyle textStyle;

  final double buttonSize;

  void _incrementCounter() {
    if (selectedValue + step <= maxValue) {
      onChanged((selectedValue + step));
    }
  }

  void _decrementCounter() {
    if (selectedValue - step >= minValue) {
      onChanged((selectedValue - step));
    }
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    color = color ?? themeData.accentColor;
    textStyle = textStyle ??
        new TextStyle(
          fontSize: 20.0,
        );

    return Container(
      padding: EdgeInsets.all(5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: buttonSize,
              height: buttonSize,
              child: FloatingActionButton(
                  onPressed: _decrementCounter,
                  backgroundColor: color,
                  elevation: 0,
                  tooltip: 'Decrement',
                  child: Image.asset("assets/icons/minus.png",
                      width: buttonSize / 2, height: buttonSize / 2))),
          Container(
              padding: EdgeInsets.all(10),
              child: new Text(
                  '${num.parse((selectedValue).toStringAsFixed(decimalPlaces))}',
                  style: textStyle)),
          SizedBox(
              width: buttonSize,
              height: buttonSize,
              child: FloatingActionButton(
                  onPressed: _incrementCounter,
                  backgroundColor: color,
                  elevation: 0,
                  tooltip: 'Increment',
                  child: Image.asset("assets/icons/add.png",
                      width: buttonSize / 2, height: buttonSize / 2))),
        ],
      ),
    );
  }
}
