import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Task Title Here"),
                Text("Task Description Here")
              ],
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.done),
            ),
            IconButton(onPressed: () {}, icon: Icon(Icons.edit)),
            IconButton(onPressed: () {}, icon: Icon(Icons.delete))
          ],
        ),
      ),
    );
  }
}
