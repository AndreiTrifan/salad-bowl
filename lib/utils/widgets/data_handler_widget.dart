import 'package:flutter/material.dart';

import '../standards/standard_fail_screen.dart';
import '../standards/standard_loading.dart';
import '../standards/standard_empty_screen.dart';
import '../constants.dart';

class DataHandlerWidget extends StatelessWidget {
  final DataStatus dataStatus;
  final Widget child;

  const DataHandlerWidget({required this.dataStatus, required this.child});

  Widget get dataHandlerWidget {
    switch (dataStatus) {
      case DataStatus.EMPTY:
        return StandardEmptyScreen();
      case DataStatus.ERROR:
        return StandardFailScreen();
      case DataStatus.LOADING:
        return StandardLoading();
      case DataStatus.SUCCESS:
        return child;
      default:
        return StandardLoading();
    }
  }

  @override
  Widget build(BuildContext context) {
    return dataHandlerWidget;
  }
}