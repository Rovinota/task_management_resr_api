
import 'package:flutter/material.dart';

import '../widgets/task_card.dart';

class CancelledTaskScreen extends StatefulWidget {
  const CancelledTaskScreen({super.key});

  @override
  State<CancelledTaskScreen> createState() => _CancelledTaskScreenState();
}

class _CancelledTaskScreenState extends State<CancelledTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                index++;
                return TaskCard(status: "Cancelled",);
              },
              itemCount: 100,

            ),
          )
        ],
      ),
    );
  }
}
