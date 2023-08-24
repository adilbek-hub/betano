import 'package:betano/models/link_model.dart';
import 'package:betano/models/upcoming_completed_valeyball.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_view.dart';

class Link extends StatelessWidget {
  const Link({super.key});

  @override
  Widget build(BuildContext context) {
    final linkController = TextEditingController();

    Future<void> addLink() async {
      final db = FirebaseFirestore.instance;
      final link = LinkModel(link: linkController.text);
      await db.collection('myLink').add(link.toFirestore());
    }

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextFormField(
            decoration: const InputDecoration(
              icon: Icon(Icons.person),
              hintText: 'Your Link',
              labelText: 'Name *',
            ),
            onSaved: (String? value) {
              // This optional block of code can be used to run
              // code when the user saves the form.
            },
            validator: (String? value) {
              return (value != null && value.contains('@'))
                  ? 'Do not use the @ char.'
                  : null;
            },
            controller: linkController,
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () async {
              await addLink();
              const CupertinoActivityIndicator();
              const Duration(seconds: 3);
              // ignore: use_build_context_synchronously
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MenuView(
                    upcomingCompletedList: upcomingCompletedValeyballList,
                  ),
                ),
              );
            },
            child: const Text('Safe Link to Firebase'),
          ),
        ],
      ),
    );
  }
}
