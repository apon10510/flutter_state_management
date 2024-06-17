import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/home_screen.dart';

final nameProvider = Provider<String>/*Data Type Good Practices*/((ref) {
  //!  provider requred a function this function own a value and return this null value ....
  return 'Apon';
});
void main() {
  runApp(
    const ProviderScope(
      // ProviderScope is very important other wise error show !!
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}
