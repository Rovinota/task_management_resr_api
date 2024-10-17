
import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/screens/main_bottom_nav_bar_screen.dart';
import 'package:task_management_resr_api/ui/screens/new_task_screen.dart';
import 'package:task_management_resr_api/ui/widgets/Tm_Appbar.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TmAppbar(),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: 
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Add New Task", style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(fontWeight: FontWeight.w600),),
              SizedBox(height: 5,),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Add Title",
                  hintStyle: TextStyle(
                      color: Colors.grey,
                      fontSize: 16
                  ),
                ),
              ),
              SizedBox(height: 10,),
              TextFormField(
                maxLines: 5,
                decoration: InputDecoration(
                  hintText: "Add Description",
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 5,),
              ElevatedButton(onPressed: () {
                Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>MainBottomNavBarScreen()), (value)=>false);
              }, child: Icon(Icons.arrow_circle_right_outlined),),
            ],
          ),
        ),
      ),
    );
  }
}


