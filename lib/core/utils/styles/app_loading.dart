import 'package:flutter/material.dart';
// this method called when a page needs time to be loaded 
// statement parameter for add a condetion and the second is loaded widget
appLoading(statement, widget) {
  if (statement) {
    return const Center(child: CircularProgressIndicator());
  } else {
    return widget;
  }
}
