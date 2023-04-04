import 'dart:async';
import 'package:mobx/mobx.dart';
import 'package:stopwatch/stopModel.dart';

class StopVM extends StopModel {
  void minute() {
    Stopwatch stopwatch = Stopwatch();
    var watch = stopwatch.elapsedMilliseconds;
    var countminutes = Duration(milliseconds: watch);
    flowinData.add(countminutes);

    if (countminutes == 99) {
      countminutes;
    }
  }

  void stopwatchStart() {
    counter++;
    if (counter % 2 != 0) {
      Status = "Pause";
      Stopwatch stopwatch = Stopwatch();
      var watch = stopwatch.elapsedMilliseconds;
      var countminutes = Duration(milliseconds: watch);
      var countseconds = Duration(milliseconds: watch);

      timer = Timer.periodic(Duration(seconds: 1), (_) {
        flowinData.add(countseconds);

        if (countseconds == 60) {
          minute();
          countseconds;
        }
      });
    } else {
      Status = "Start";
      pausecountdown();
    }
  }

  void pausecountdown() {
    timer!.cancel();
  }
}
