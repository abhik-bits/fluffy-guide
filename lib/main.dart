import 'package:b4a_task_tracker/task_view.dart';
import 'package:b4a_task_tracker/themes/themes.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Tracker',
      theme: ThemeData(
        colorScheme: CustomTheme.lightColorScheme,
        appBarTheme:
            AppBarTheme(backgroundColor: CustomTheme.lightColorScheme.primary),
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: CustomTheme.darkColorScheme,
        appBarTheme:
            AppBarTheme(backgroundColor: CustomTheme.darkColorScheme.primary),
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: const TasksView(),
    );
  }
}
