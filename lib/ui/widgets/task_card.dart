import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/Utils/AppColors.dart';

class TaskCard extends StatefulWidget {
  const TaskCard({super.key, required this.status});
  final String status ;
  @override
  State<TaskCard> createState() => _TaskCardState();
}

class _TaskCardState extends State<TaskCard> {

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Task Tittle",
              style: Theme.of(context).textTheme.titleSmall,
            ),
            Text("Task Description"),
            Text("Date: 18/10/24"),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildTaskStatusChip(),
                Wrap(
                  children: [
                    IconButton(onPressed: onTapEditButton, icon: Icon(Icons.edit),),
                    IconButton(onPressed: (){}, icon: Icon(Icons.delete),),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
  void onTapEditButton() {
    showDialog(context: context, builder: (context){
      return AlertDialog(

        title: Text("Edit Status"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: ['New', 'Completed', 'Cancelled', 'Progress'].map((e){
            return ListTile(
              onTap: (){},
              title: Text(e),
            );
          }).toList(),),
        actions: [
          TextButton(onPressed: (){Navigator.pop(context);}, child: Text("Cancle"),),
          TextButton(onPressed: (){}, child: Text("Okey"),),
        ],
      );
    });
  }
  Widget _buildTaskStatusChip() {
    return Chip(
      label: Text(
        widget.status,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      side: BorderSide(
        color: AppColors.themecolor,
      ),
    );
  }
}
