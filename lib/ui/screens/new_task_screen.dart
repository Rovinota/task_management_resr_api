import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/widgets/task_summary_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _buildSummarySection(),
          SizedBox(
            height: 10,
          ),

          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                index++;
                return Card(
                  color: Colors.greenAccent,
                  elevation: 0,
                  child: Center(child: Text("Task no $index"),),
                );
              },
              itemCount: 100,

            ),
          )
        ],
      ),
    );
  }

  Widget _buildSummarySection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TaskSummaryCard(count: 5, title: "New"),
            TaskSummaryCard(count: 5, title: "Completed"),
            TaskSummaryCard(count: 5, title: "Cancelled"),
            TaskSummaryCard(count: 5, title: "In Progress"),
          ],
        ),
      ),
    );
  }
}
