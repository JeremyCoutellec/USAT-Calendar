import 'package:flutter/material.dart';
import 'package:usat_calendar/router/coordinator.dart';

class DevFloatButton extends StatelessWidget {
  const DevFloatButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => XCoordinator.showDev(),
      child: Icon(Icons.file_upload_outlined),
    );
  }
}
