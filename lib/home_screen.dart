import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_state_management/main.dart';

class HomePage extends ConsumerWidget { // How Read the value. first Convert ConsumerWidget
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) { // Then requred WidgetRef Set 
  final name =  ref.watch(nameProvider); //! this watch is read variable and this time nameProvider and name is variable 
    return  Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(name), // and show this name
      ),
    );
  }
}
