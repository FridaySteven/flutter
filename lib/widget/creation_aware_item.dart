import 'package:flutter/material.dart';

class CreationAwareItem extends StatefulWidget {
  const CreationAwareItem({
    Key? key,
    required this.itemCreated,
    required this.childBuilder,
  }) : super(key: key);

  final Function itemCreated;
  final Widget Function() childBuilder;

  @override
  _CreationAwareItemState createState() => _CreationAwareItemState();
}

class _CreationAwareItemState extends State<CreationAwareItem> {
  @override
  void initState() {
    super.initState();
    widget.itemCreated();
  }

  @override
  Widget build(BuildContext context) {
    return widget.childBuilder();
  }
}