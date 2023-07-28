import 'package:flutter/cupertino.dart';
import 'package:flutter/scheduler.dart';
import 'package:my_demo_app/service/fake_remider_service.dart';

import '../models/home_model.dart';

class ReminderShareWidgetProvider extends ChangeNotifier {
  late Home homeG;
  late bool reminderBool = false;

  late List<Home> _reminderList = [Home()];
  List<Home> get reminderList => _reminderList;

  void iniState(Home home) {
    SchedulerBinding.instance.scheduleFrameCallback((timeStamp) {
      _reminderList = ReminderService.reminderDataService;
    });
    homeG = home;
    reminderBool = getReminder();
  }

  bool getReminder() {
    Home result = _reminderList.firstWhere(
      (element) => element.title == homeG.title,
      orElse: () => Home(),
    );

    if (result.title != null) {
      return true;
    } else {
      return false;
    }
  }

  void updateReminderStatus(bool isSetRemider, Home home) {
    ReminderService().setReminderDataService(isSetRemider, home);
    _reminderList = ReminderService.reminderDataService;

    reminderBool = getReminder();
    notifyListeners();
  }

  int getIndex(Home home) {
    print(
        'SZS: =========== ${_reminderList.indexWhere((element) => element.title == home.title)}');
    return _reminderList.indexWhere((element) => element.title == home.title);
  }
}
