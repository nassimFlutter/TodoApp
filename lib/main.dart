import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:storgesql/constant.dart';
import 'package:storgesql/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:storgesql/model/note_model.dart';

import 'package:storgesql/views/note_view.dart';

void main() async {
  await Hive.initFlutter();
  if (kDebugMode) {
    print("Hive init");
  }
  await Hive.openBox(kNotesBox);
  if (kDebugMode) {
    print("knotes opened");
  }
  Hive.registerAdapter(NoteModelAdapter());
  if (kDebugMode) {
    print("register NoteModel adapter");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData.dark(),
        home: const NotesView(),
      ),
    );
  }
}
