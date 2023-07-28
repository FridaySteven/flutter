import 'package:flutter/material.dart';
import 'package:my_demo_app/provider/reminder_share_widget_provider.dart';
import 'package:provider/provider.dart';

import '../models/home_model.dart';

class ReminderShareWidget extends StatefulWidget {
  const ReminderShareWidget({
    super.key,
    required this.home,
    required this.providerRemin,
    this.iconSize,
  });

  final Home home;
  final ReminderShareWidgetProvider providerRemin;
  final double? iconSize;

  @override
  State<ReminderShareWidget> createState() => _ReminderShareWidgetState();
}

class _ReminderShareWidgetState extends State<ReminderShareWidget> {
  @override
  void initState() {
    super.initState();

    Provider.of<ReminderShareWidgetProvider>(context, listen: false)
        .iniState(widget.home);
  }

  @override
  Widget build(BuildContext context) {
    int index = widget.providerRemin.getIndex(widget.home);
    return Container(
      decoration: BoxDecoration(
        color:
            index > -1 && widget.providerRemin.reminderList[index].isSetRemider!
                ? Colors.red
                : Colors.black,
        borderRadius: BorderRadius.circular(30),
      ),
      child: IconButton(
        onPressed: () => widget.providerRemin.updateReminderStatus(
            index > -1
                ? widget.providerRemin.reminderList[index].isSetRemider!
                : false,
            widget.home),
        icon: Icon(
          Icons.notifications,
          color: index > -1 &&
                  widget.providerRemin.reminderList[index].isSetRemider!
              ? Colors.white
              : Colors.white54,
        ),
        iconSize: widget.iconSize,
      ),
    );
  }
}
