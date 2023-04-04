StopVM(){
    Stopwatch stopwatch = Stopwatch();
  print(stopwatch.elapsedMilliseconds); // 0
  print(stopwatch.isRunning); // false
  stopwatch.start();
  print(stopwatch.isRunning);
  }
  