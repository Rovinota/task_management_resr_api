import 'package:flutter/material.dart';
import 'package:task_management_resr_api/ui/screens/add_new_task_screen.dart';
import 'package:task_management_resr_api/ui/screens/new_task_screen.dart';
import 'package:task_management_resr_api/ui/screens/progress_task_screen.dart';

import '../widgets/Tm_Appbar.dart';
import 'cancelled_task_screen.dart';
import 'completed_task_screen.dart';

class MainBottomNavBarScreen extends StatefulWidget {
  const MainBottomNavBarScreen({super.key});

  @override
  State<MainBottomNavBarScreen> createState() => _MainBottomNavBarScreenState();
}

class _MainBottomNavBarScreenState extends State<MainBottomNavBarScreen> {

  int _selectedIndex = 0;
  final List<Widget> _screens = const [
    NewTaskScreen(),
    CompletedTaskScreen(),
    CancelledTaskScreen(),
    ProgressTaskScreen()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: TmAppbar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>AddNewTaskScreen(),),);
      }, child: Icon(Icons.add),),
      body: _screens[_selectedIndex],
      bottomNavigationBar: NavigationBar(
          selectedIndex: _selectedIndex,
          onDestinationSelected: (int index) {
            _selectedIndex = index;
            setState(() {

            });
          },
          destinations: [
        NavigationDestination(icon: Icon(Icons.create_new_folder_outlined), label: 'New'),
        NavigationDestination(icon: Icon(Icons.check_box), label: 'Completed'),
        NavigationDestination(icon: Icon(Icons.cancel), label: 'Cancled'),
        NavigationDestination(icon: Icon(Icons.access_time), label: 'Progress'),
      ]),
    );
  }
}
