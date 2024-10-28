import 'package:flutter/material.dart';
import 'package:notes_app/widget/notes_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {},
      ),
      body: const SafeArea(
        child: NotesViewBody(),
      ),
    );
  }
}
