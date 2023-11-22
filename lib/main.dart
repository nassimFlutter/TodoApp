import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:storgesql/constant.dart';
import 'package:storgesql/screens/archived_task_screen.dart';
import 'package:storgesql/screens/done_task_screen.dart';
import 'package:storgesql/screens/new_task_screen.dart';
import 'package:storgesql/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: const NotesView(),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int currentIndex = 0;
//   List<Widget> screens = [
//     NewTaskScreen(),
//     DoneTaskScreen(),
//     ArchivedTaskScreen()
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: screens[currentIndex],
//       appBar: AppBar(),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: Icon(Icons.add),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           backgroundColor: Colors.grey.shade50,
//           showSelectedLabels: true,
//           showUnselectedLabels: false,
//           currentIndex: currentIndex,
//           onTap: (value) {
//             print(value);
//             setState(() {
//               currentIndex = value;
//             });
//           },
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Task"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.check_circle_outline), label: "Done"),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.architecture_outlined), label: "Archived"),
//           ]),
//     );
//   }
// }
