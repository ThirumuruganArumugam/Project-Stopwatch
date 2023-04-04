import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';

part 'stopModel.g.dart';

// ignore: library_private_types_in_public_api
class StopModel = _StopModelBase with _$StopModel;

abstract class _StopModelBase with Store {
  StreamController flowinData = StreamController.broadcast();

  Timer? timer;
  Timer? minutes;


  @observable
  int sec = 0;
  @observable
  int min = 0;

  @observable
  // ignore: non_constant_identifier_names
  String Status = "Start";
  @observable
  int counter = 0;
}
