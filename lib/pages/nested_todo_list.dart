import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:nested_tasks/pages/todo_widget.dart';
import 'package:nested_tasks/providers/task_provider.dart';

class NestedTodoList extends StatelessWidget {
  const NestedTodoList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Consumer(builder: (context, ref, child) {
              final blocks = ref.watch(tasksProvider);
              return TodoWidget(
                block: blocks,
              );
            }),
          ],
        ),
      ),
    );
  }
}
