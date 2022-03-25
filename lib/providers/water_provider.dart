
import 'package:flutter/foundation.dart';

import '../models/water_model.dart';

class WaterData extends ChangeNotifier {
  List<WaterLog> totalWater = [];
  List<WaterLog> totalWaterToday = [];
  double? cupSize = 500;
  double? dailyGoal;
  double? totalWaterDrankToday;
  double? sumofWaterToday;
  int? percentageCompleted;
  double? weeklyAverage;

  ///Calc Water dranktoday

  calWaterDrankToday() {
    for (WaterLog waterItems in totalWaterToday) {
      totalWaterDrankToday = waterItems.amount;
    }

    notifyListeners();
  }

  ///calculate percentage Complete.

  caclPercentageCompleted() {
    percentageCompleted = (totalWaterDrankToday! / dailyGoal! * 100).toInt();

    notifyListeners();
  }

  ///Add Water Log
  addWaterLog() {
    //add water to todays list
    totalWaterToday.add(WaterLog(amount: cupSize, time: DateTime.now()));
    //add water to lifteimelist
    totalWater.add(WaterLog(amount: cupSize, time: DateTime.now()));
    notifyListeners();
  }

  ///Delete last water log

  deleteLastWaterLog() {
    //remove last water added from today's list
    totalWaterToday.removeLast();
    //remove last water added from total list
    totalWater.removeLast();
    notifyListeners();
  }

  deleteWaterLog(int index) {
    //remove a particular wter log from today's list
    totalWater.removeAt(index);
    //remove a particular wter log from total list

    totalWaterToday.removeAt(index);
    notifyListeners();
  }

  changeCupSize(double newCupSize) {
    cupSize = newCupSize;
    notifyListeners();
  }

  ///Set Daily Goal
  setDailyGoal(double newDailyGoal) {
    if (newDailyGoal < 100) {
      dailyGoal = 1000 * newDailyGoal;
    }

    dailyGoal = newDailyGoal;
    notifyListeners();
  }

  calcWeeklyAverage(){

  }
}
