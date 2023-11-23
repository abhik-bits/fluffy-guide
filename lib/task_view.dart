import 'package:b4a_task_tracker/components/TaskCard.dart';
import 'package:flutter/material.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Tracker"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            TextField(
              decoration: InputDecoration(
                  hintText: "Task Title",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(width: 3.0))),
            ),
            const SizedBox(
              height: 12,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: "Task Description",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: const BorderSide(width: 3.0))),
            ),
            const SizedBox(
              height: 16,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                  onPressed: () {
                    print("pressed");
                  },
                  child: const Text("Add Task")),
            ),
            const SizedBox(
              height: 16,
            ),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
            TaskCard(),
          ]),
        ),
      ),
    );
  }
}
