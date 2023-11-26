import 'package:b4a_task_tracker/modules/task/controllers/tasks_controller.dart';
import 'package:b4a_task_tracker/modules/task/views/task_view.dart';
import 'package:b4a_task_tracker/themes/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final keyApplicationId = '8Uq9zkqHPMaHhD3OwgBnoyFUrecv7iIqsDxaPe1K';
  final keyClientKey = 'DOiQ5bw0rxAp1sKWwTTUy7XVXE28gkRSvBfwyu62';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, autoSendSessionId: true);
  Get.put(TaskController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Tracker',
      debugShowCheckedModeBanner: false,
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
