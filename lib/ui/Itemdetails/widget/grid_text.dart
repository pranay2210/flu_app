import 'package:flutter/material.dart';

text(String value) {
  return Flexible(
    child: Text(
      value,
      style: TextStyle(
        fontSize: 14.0,
      ),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    ),
  );
}
