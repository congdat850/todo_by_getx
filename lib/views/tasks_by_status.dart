import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todo_by_getx/utils/constants.dart';
import 'package:todo_by_getx/widgets/task_status/task_status_header.dart';
import '../widgets/home/display_task_by_status.dart';

class TasksByStatus extends StatelessWidget {
  const TasksByStatus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = Get.arguments['status'] as TaskStatus;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TaskStatusHeader(taskStatus: status),
              kVerticalSpace(20),
              DisplayTasksByStatus(status: status.name),
            ],
          ),
        ),
      ),
    );
  }
}
